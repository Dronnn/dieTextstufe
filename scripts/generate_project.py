#!/usr/bin/env python3
"""Reproducibly generate a conventional Xcode project (no XcodeGen required)."""
from pathlib import Path
import hashlib

root = Path(__file__).resolve().parents[1]
project = root / 'Textstufe.xcodeproj'
project.mkdir(exist_ok=True)

files = {
    'App': ['TextstufeApp.swift', 'Theme.swift', 'SampleTexts.swift'],
    'Core': ['AssessmentModels.swift', 'DonationTiers.swift', 'GermanLemma.swift', 'GermanLemmaData.swift', 'ReadingScorer.swift', 'ZixModelData.swift'],
    'Resources': ['Localizable.xcstrings', 'LaunchScreen.storyboard', 'THIRD_PARTY_NOTICES.md'],
    'Services': ['GermanTextAnalyzer.swift', 'DonationStore.swift'],
    'Views': ['ContentView.swift', 'AssessmentView.swift', 'AboutView.swift', 'SupportView.swift', 'LicensesView.swift'],
}

def uid(tag):
    return hashlib.sha256(('Textstufe:' + tag).encode()).hexdigest()[:24].upper()


def ref(key, comment):
    return f'{uid(key)} /* {comment} */'


def block(key, comment, contents):
    return f'\t\t{ref(key, comment)} = {{\n' + contents + '\t\t};\n'

pfile = []
bfile = []
for folder, names in files.items():
    for name in names:
        key = f'{folder}/{name}'
        if name.endswith('.xcstrings'):
            file_type = 'text.json.xcstrings'
        elif name.endswith('.storyboard'):
            file_type = 'file.storyboard'
        elif name.endswith('.md'):
            file_type = 'net.daringfireball.markdown'
        else:
            file_type = 'sourcecode.swift'
        pfile.append(block('ref:'+key, name,
            '\t\t\tisa = PBXFileReference;\n'
            f'\t\t\tlastKnownFileType = {file_type};\n'
            f'\t\t\tpath = {name};\n'
            '\t\t\tsourceTree = "<group>";\n'))
        if name.endswith('.swift'):
            bfile.append(block('build:'+key, name+' in Sources',
                '\t\t\tisa = PBXBuildFile;\n'
                f'\t\t\tfileRef = {ref("ref:"+key, name)};\n'))
        else:
            bfile.append(block('build:'+key, name+' in Resources',
                '\t\t\tisa = PBXBuildFile;\n'
                f'\t\t\tfileRef = {ref("ref:"+key, name)};\n'))
pfile.append(block('ref:assets', 'Assets.xcassets',
    '\t\t\tisa = PBXFileReference;\n'
    '\t\t\tlastKnownFileType = folder.assetcatalog;\n'
    '\t\t\tpath = Assets.xcassets;\n'
    '\t\t\tsourceTree = "<group>";\n'))
bfile.append(block('build:assets', 'Assets.xcassets in Resources',
    '\t\t\tisa = PBXBuildFile;\n'
    f'\t\t\tfileRef = {ref("ref:assets", "Assets.xcassets")};\n'))
pfile.append(block('ref:product', 'Textstufe.app',
    '\t\t\tisa = PBXFileReference;\n'
    '\t\t\texplicitFileType = wrapper.application;\n'
    '\t\t\tincludeInIndex = 0;\n'
    '\t\t\tpath = Textstufe.app;\n'
    '\t\t\tsourceTree = BUILT_PRODUCTS_DIR;\n'))

groups=[]
for folder,names in files.items():
    content='\t\t\tisa = PBXGroup;\n\t\t\tchildren = (\n'
    for name in names: content+=f'\t\t\t\t{ref("ref:"+folder+"/"+name,name)},\n'
    content+=f'\t\t\t);\n\t\t\tpath = {folder};\n\t\t\tsourceTree = "<group>";\n'
    groups.append(block('grp:'+folder,folder,content))
groups.append(block('grp:app','Textstufe',
    '\t\t\tisa = PBXGroup;\n\t\t\tchildren = (\n' +
    ''.join(f'\t\t\t\t{ref("grp:"+f,f)},\n' for f in files) +
    f'\t\t\t\t{ref("ref:assets","Assets.xcassets")},\n'+
    '\t\t\t);\n\t\t\tpath = Textstufe;\n\t\t\tsourceTree = "<group>";\n'))
groups.append(block('grp:products','Products',
    '\t\t\tisa = PBXGroup;\n'+f'\t\t\tchildren = ({ref("ref:product","Textstufe.app")},);\n'+
    '\t\t\tname = Products;\n\t\t\tsourceTree = "<group>";\n'))
groups.append(block('grp:root','Project',
    '\t\t\tisa = PBXGroup;\n\t\t\tchildren = (\n'+
    f'\t\t\t\t{ref("grp:app","Textstufe")},\n'+
    f'\t\t\t\t{ref("grp:products","Products")},\n'+
    '\t\t\t);\n\t\t\tsourceTree = "<group>";\n'))

sources=block('phase:sources','Sources',
    '\t\t\tisa = PBXSourcesBuildPhase;\n\t\t\tbuildActionMask = 2147483647;\n\t\t\tfiles = (\n'+
    ''.join(f'\t\t\t\t{ref("build:"+folder+"/"+name,name+" in Sources")},\n' for folder,names in files.items() for name in names if name.endswith('.swift'))+
    '\t\t\t);\n\t\t\trunOnlyForDeploymentPostprocessing = 0;\n')
resources=block('phase:resources','Resources',
    '\t\t\tisa = PBXResourcesBuildPhase;\n\t\t\tbuildActionMask = 2147483647;\n\t\t\tfiles = (\n'+
    f'\t\t\t\t{ref("build:assets","Assets.xcassets in Resources")},\n'+
    ''.join(f'\t\t\t\t{ref("build:"+folder+"/"+name,name+" in Resources")},\n' for folder,names in files.items() for name in names if not name.endswith('.swift'))+
    '\t\t\t);\n\t\t\trunOnlyForDeploymentPostprocessing = 0;\n')
frameworks=block('phase:frameworks','Frameworks',
    '\t\t\tisa = PBXFrameworksBuildPhase;\n\t\t\tbuildActionMask = 2147483647;\n'
    '\t\t\tfiles = ();\n\t\t\trunOnlyForDeploymentPostprocessing = 0;\n')

target=block('target','Textstufe',
    '\t\t\tisa = PBXNativeTarget;\n'
    f'\t\t\tbuildConfigurationList = {ref("cfglist:target","Build configuration list for PBXNativeTarget Textstufe")};\n'
    '\t\t\tbuildPhases = (\n'+
    ''.join(f'\t\t\t\t{ref("phase:"+f,f.capitalize())},\n' for f in ['sources','frameworks','resources'])+
    '\t\t\t);\n\t\t\tbuildRules = ();\n\t\t\tdependencies = ();\n'
    '\t\t\tname = Textstufe;\n'
    '\t\t\tproductName = Textstufe;\n'
    f'\t\t\tproductReference = {ref("ref:product","Textstufe.app")};\n'
    '\t\t\tproductType = "com.apple.product-type.application";\n')

proj=block('project','Project object',
    '\t\t\tisa = PBXProject;\n'
    '\t\t\tattributes = {\n'
    '\t\t\t\tBuildIndependentTargetsInParallel = 1;\n'
    '\t\t\t\tLastUpgradeCheck = 1600;\n'
    f'\t\t\t\tTargetAttributes = {{{uid("target")} = {{CreatedOnToolsVersion = 16.0; }}; }};\n'
    '\t\t\t};\n'
    f'\t\t\tbuildConfigurationList = {ref("cfglist:project","Build configuration list for PBXProject")};\n'
    '\t\t\tcompatibilityVersion = "Xcode 14.0";\n'
    '\t\t\tdevelopmentRegion = en;\n'
    '\t\t\thasScannedForEncodings = 0;\n'
    '\t\t\tknownRegions = (en, de, fr, es, it, pl, ru, uk, ja, "zh-Hans", pt, tr, Base);\n'
    f'\t\t\tmainGroup = {ref("grp:root","Project")};\n'
    f'\t\t\tproductRefGroup = {ref("grp:products","Products")};\n'
    '\t\t\tprojectDirPath = "";\n\t\t\tprojectRoot = "";\n'
    f'\t\t\ttargets = ({ref("target","Textstufe")},);\n')

build_configs=[]
for scope in ['project','target']:
    for mode in ['Debug','Release']:
        if scope=='project':
            config='''\t\t\tCLANG_ENABLE_MODULES = YES;
\t\t\tCLANG_ENABLE_OBJC_ARC = YES;
\t\t\tCODE_SIGN_STYLE = Automatic;
\t\t\tCOPY_PHASE_STRIP = NO;
\t\t\tGCC_C_LANGUAGE_STANDARD = gnu17;
\t\t\tIPHONEOS_DEPLOYMENT_TARGET = 17.0;
\t\t\tSDKROOT = iphoneos;
\t\t\tSWIFT_VERSION = 5.0;
'''
            if mode=='Debug': config+='\t\t\tSWIFT_OPTIMIZATION_LEVEL = "-Onone";\n\t\t\tDEBUG_INFORMATION_FORMAT = dwarf;\n\t\t\tSWIFT_ACTIVE_COMPILATION_CONDITIONS = DEBUG;\n'
            else: config+='\t\t\tSWIFT_COMPILATION_MODE = wholemodule;\n\t\t\tSWIFT_OPTIMIZATION_LEVEL = "-O";\n'
        else:
            config='''\t\t\tASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
\t\t\tCODE_SIGN_STYLE = Automatic;
\t\t\tCURRENT_PROJECT_VERSION = 1;
\t\t\tGENERATE_INFOPLIST_FILE = YES;
\t\t\tINFOPLIST_KEY_CFBundleDisplayName = Textstufe;
\t\t\tINFOPLIST_KEY_LSApplicationCategoryType = "public.app-category.education";
\t\t\tINFOPLIST_KEY_UIApplicationSceneManifest_Generation = YES;
\t\t\tINFOPLIST_KEY_UILaunchStoryboardName = LaunchScreen;
\t\t\tIPHONEOS_DEPLOYMENT_TARGET = 17.0;
\t\t\tMARKETING_VERSION = 0.1.0;
\t\t\tPRODUCT_BUNDLE_IDENTIFIER = com.mrmaier.textstufe;
\t\t\tPRODUCT_NAME = "$(TARGET_NAME)";
\t\t\tSUPPORTED_PLATFORMS = "iphoneos iphonesimulator";
\t\t\tSWIFT_EMIT_LOC_STRINGS = YES;
\t\t\tSWIFT_STRICT_CONCURRENCY = complete;
\t\t\tSWIFT_VERSION = 5.0;
\t\t\tTARGETED_DEVICE_FAMILY = "1,2";
'''
        build_configs.append(block(f'config:{scope}:{mode}',mode,
            '\t\t\tisa = XCBuildConfiguration;\n'
            '\t\t\tbuildSettings = {\n'+''.join('\t'+line+'\n' for line in config.splitlines())+
            '\t\t\t};\n'
            f'\t\t\tname = {mode};\n'))

cfg_lists=[]
for scope in ['project','target']:
    cfg_lists.append(block(f'cfglist:{scope}','Build configuration list',
        '\t\t\tisa = XCConfigurationList;\n'
        '\t\t\tbuildConfigurations = (\n'+
        ''.join(f'\t\t\t\t{ref("config:"+scope+":"+mode,mode)},\n' for mode in ['Debug','Release'])+
        '\t\t\t);\n'
        '\t\t\tdefaultConfigurationIsVisible = 0;\n'
        '\t\t\tdefaultConfigurationName = Release;\n'))

sections = [
    ('PBXBuildFile',bfile),('PBXFileReference',pfile),('PBXFrameworksBuildPhase',[frameworks]),
    ('PBXGroup',groups),('PBXNativeTarget',[target]),('PBXProject',[proj]),
    ('PBXResourcesBuildPhase',[resources]),('PBXSourcesBuildPhase',[sources]),
    ('XCBuildConfiguration',build_configs),('XCConfigurationList',cfg_lists),
]
result='''// !$*UTF8*$!\n{\n\tarchiveVersion = 1;\n\tclasses = {};\n\tobjectVersion = 56;\n\tobjects = {\n'''
for title, entries in sections:
    result+=f'\n/* Begin {title} section */\n'+''.join(entries)+f'/* End {title} section */\n'
result+=f'\t}};\n\trootObject = {ref("project","Project object")};\n}}\n'
(project / 'project.pbxproj').write_text(result)

schemes=project/'xcshareddata'/'xcschemes'
schemes.mkdir(parents=True, exist_ok=True)
schemes.joinpath('Textstufe.xcscheme').write_text(f'''<?xml version="1.0" encoding="UTF-8"?>
<Scheme LastUpgradeVersion="1600" version="1.3">
  <BuildAction parallelizeBuildables="YES" buildImplicitDependencies="YES">
    <BuildActionEntries><BuildActionEntry buildForTesting="YES" buildForRunning="YES" buildForProfiling="YES" buildForArchiving="YES" buildForAnalyzing="YES">
      <BuildableReference BuildableIdentifier="primary" BlueprintIdentifier="{uid('target')}" BuildableName="Textstufe.app" BlueprintName="Textstufe" ReferencedContainer="container:Textstufe.xcodeproj"/>
    </BuildActionEntry></BuildActionEntries>
  </BuildAction>
  <LaunchAction buildConfiguration="Debug" selectedDebuggerIdentifier="Xcode.DebuggerFoundation.Debugger.LLDB" selectedLauncherIdentifier="Xcode.IDEFoundation.Launcher.PosixSpawn" launchStyle="0" useCustomWorkingDirectory="NO" ignoresPersistentStateOnLaunch="NO" debugDocumentVersioning="YES" debugServiceExtension="internal" allowLocationSimulation="YES">
    <BuildableProductRunnable runnableDebuggingMode="0"><BuildableReference BuildableIdentifier="primary" BlueprintIdentifier="{uid('target')}" BuildableName="Textstufe.app" BlueprintName="Textstufe" ReferencedContainer="container:Textstufe.xcodeproj"/></BuildableProductRunnable>
    <StoreKitConfigurationFileReference identifier="../Configuration/Textstufe.storekit"/>
  </LaunchAction>
  <ProfileAction buildConfiguration="Release" shouldUseLaunchSchemeArgsEnv="YES" savedToolIdentifier="" useCustomWorkingDirectory="NO" debugDocumentVersioning="YES"><BuildableProductRunnable runnableDebuggingMode="0"><BuildableReference BuildableIdentifier="primary" BlueprintIdentifier="{uid('target')}" BuildableName="Textstufe.app" BlueprintName="Textstufe" ReferencedContainer="container:Textstufe.xcodeproj"/></BuildableProductRunnable></ProfileAction>
  <AnalyzeAction buildConfiguration="Debug"/>
  <ArchiveAction buildConfiguration="Release" revealArchiveInOrganizer="YES"/>
</Scheme>
''')
print('Wrote',project)

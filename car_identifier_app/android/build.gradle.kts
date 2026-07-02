allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

subprojects {
    if (name == "app") return@subprojects
    val applyCompileSdk = {
        val androidExt = extensions.findByType<com.android.build.gradle.BaseExtension>()
        if (androidExt != null) {
            androidExt.compileSdkVersion(35)
        }
    }
    if (state.executed) {
        applyCompileSdk()
    } else {
        afterEvaluate { applyCompileSdk() }
    }
}

gradle.projectsEvaluated {
    subprojects {
        extensions.findByType<com.android.build.gradle.BaseExtension>()?.apply {
            if (namespace == null) {
                namespace = project.group.toString()
            }
        }
    }
}

@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\selenium-java-4.3.0.jar;%APP_HOME%\lib\selenium-chrome-driver-4.3.0.jar;%APP_HOME%\lib\selenium-devtools-v101-4.3.0.jar;%APP_HOME%\lib\selenium-devtools-v102-4.3.0.jar;%APP_HOME%\lib\selenium-devtools-v103-4.3.0.jar;%APP_HOME%\lib\selenium-firefox-driver-4.3.0.jar;%APP_HOME%\lib\selenium-devtools-v85-4.3.0.jar;%APP_HOME%\lib\selenium-edge-driver-4.3.0.jar;%APP_HOME%\lib\selenium-ie-driver-4.3.0.jar;%APP_HOME%\lib\selenium-opera-driver-4.3.0.jar;%APP_HOME%\lib\selenium-safari-driver-4.3.0.jar;%APP_HOME%\lib\selenium-support-4.3.0.jar;%APP_HOME%\lib\selenium-chromium-driver-4.3.0.jar;%APP_HOME%\lib\selenium-remote-driver-4.3.0.jar;%APP_HOME%\lib\auto-service-1.0.1.jar;%APP_HOME%\lib\selenium-http-4.3.0.jar;%APP_HOME%\lib\webdrivermanager-5.2.1.jar;%APP_HOME%\lib\docker-java-3.2.13.jar;%APP_HOME%\lib\docker-java-core-3.2.13.jar;%APP_HOME%\lib\auto-common-1.2.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\cucumber-java-7.4.1.jar;%APP_HOME%\lib\cucumber-java8-7.4.1.jar;%APP_HOME%\lib\cucumber-core-7.4.1.jar;%APP_HOME%\lib\selenium-json-4.3.0.jar;%APP_HOME%\lib\selenium-api-4.3.0.jar;%APP_HOME%\lib\docker-java-transport-httpclient5-3.2.13.jar;%APP_HOME%\lib\httpclient5-5.1.3.jar;%APP_HOME%\lib\async-http-client-2.12.3.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.30.jar;%APP_HOME%\lib\async-http-client-netty-utils-2.12.3.jar;%APP_HOME%\lib\docker-java-api-3.2.13.jar;%APP_HOME%\lib\slf4j-api-2.0.0-alpha1.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\cucumber-expressions-16.0.0.jar;%APP_HOME%\lib\datatable-7.4.1.jar;%APP_HOME%\lib\cucumber-gherkin-messages-7.4.1.jar;%APP_HOME%\lib\cucumber-gherkin-7.4.1.jar;%APP_HOME%\lib\cucumber-plugin-7.4.1.jar;%APP_HOME%\lib\docstring-7.4.1.jar;%APP_HOME%\lib\apiguardian-api-1.1.2.jar;%APP_HOME%\lib\typetools-0.6.3.jar;%APP_HOME%\lib\html-formatter-19.2.0.jar;%APP_HOME%\lib\gherkin-23.0.1.jar;%APP_HOME%\lib\messages-18.0.0.jar;%APP_HOME%\lib\tag-expressions-4.1.0.jar;%APP_HOME%\lib\ci-environment-9.0.4.jar;%APP_HOME%\lib\gson-2.9.0.jar;%APP_HOME%\lib\dec-0.1.2.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\auto-service-annotations-1.0.1.jar;%APP_HOME%\lib\jcommander-1.82.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.78.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.78.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.78.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.78.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.78.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.78.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.78.Final.jar;%APP_HOME%\lib\netty-reactive-streams-2.0.4.jar;%APP_HOME%\lib\netty-handler-4.1.78.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.78.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-4.1.78.Final.jar;%APP_HOME%\lib\netty-transport-4.1.78.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.78.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.78.Final.jar;%APP_HOME%\lib\netty-common-4.1.78.Final.jar;%APP_HOME%\lib\opentelemetry-exporter-logging-1.15.0.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-1.15.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-spi-1.15.0.jar;%APP_HOME%\lib\opentelemetry-sdk-1.15.0.jar;%APP_HOME%\lib\opentelemetry-sdk-trace-1.15.0.jar;%APP_HOME%\lib\opentelemetry-sdk-metrics-1.15.0.jar;%APP_HOME%\lib\opentelemetry-sdk-logs-1.15.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-common-1.15.0.jar;%APP_HOME%\lib\opentelemetry-semconv-1.15.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-1.15.0.jar;%APP_HOME%\lib\opentelemetry-context-1.15.0.jar;%APP_HOME%\lib\jtoml-2.0.0.jar;%APP_HOME%\lib\byte-buddy-1.12.10.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\docker-java-transport-3.2.13.jar;%APP_HOME%\lib\jna-5.8.0.jar;%APP_HOME%\lib\httpcore5-h2-5.1.3.jar;%APP_HOME%\lib\httpcore5-5.1.3.jar;%APP_HOME%\lib\commons-codec-1.15.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar;%APP_HOME%\lib\failsafe-3.2.4.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\commons-compress-1.21.jar;%APP_HOME%\lib\jackson-databind-2.10.3.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.64.jar;%APP_HOME%\lib\jackson-annotations-2.10.3.jar;%APP_HOME%\lib\jackson-core-2.10.3.jar;%APP_HOME%\lib\bcprov-jdk15on-1.64.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" javacucumbergradle.App %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega

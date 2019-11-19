# Bootstrap 4 Jenkins Plugin

[![Jenkins Version](https://img.shields.io/badge/Jenkins-2.138.4-green.svg?label=min.%20Jenkins)](https://jenkins.io/download/)
![JDK8](https://img.shields.io/badge/jdk-8-yellow.svg?label=min.%20JDK)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Actions](https://github.com/jenkinsci/bootstrap4-api-plugin/workflows/GitHub%20Actions/badge.svg)](https://github.com/jenkinsci/bootstrap4-api-plugin/actions)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/uhafner/bootstrap4-api-plugin.svg)](https://github.com/jenkinsci/bootstrap4-api-plugin/pulls)

Provides [Bootstrap 4](https://getbootstrap.com/) for Jenkins Plugins.

This plugin contains a modified Bootstrap release with the following media breakpoints that better match the typical
Jenkins screen resolutions:

```scss
// Grid breakpoints
//
// Define the minimum dimensions at which your layout will change,
// adapting to different screen sizes, for use in media queries.

$grid-breakpoints: (
  xs: 0,
  sm: 768px,
  md: 1200px,
  lg: 1520px,
  xl: 1850px,
  xxl: 2400px,
) !default;

@include _assert-ascending($grid-breakpoints, "$grid-breakpoints");
@include _assert-starts-at-zero($grid-breakpoints);


// Grid containers
//
// Define the maximum width of `.container` for different screen sizes.

$container-max-widths: (
  sm: 720px,
  md: 1150px,
  lg: 1480px,
  xl: 1750px,
  xxl: 2350px,
) !default;

```

## How to use the plugin

In order to use this JS library, add a maven dependency to your pom:
```xml
    <dependency>
      <groupId>io.jenkins.plugins</groupId>
      <artifactId>bootstrap4-api</artifactId>
      <version>[latest version]</version>
    </dependency>
```

Then you can use Bootstrap in your jelly files using the following snippet:
```xml
      <st:adjunct includes="io.jenkins.plugins.bootstrap4"/>
```
 
You can find several examples of Jenkins views that use Bootstrap in the 
[Warnings Next Generation plugin](https://github.com/jenkinsci/warnings-ng-plugin).
 
## How to build the plugin

Since the plugin contains a modified bootstrap release, you need to build the release manually using the following steps:
1. Download the latest release
2. Unpack the release into a temporary folder
3. Change the breakpoints in the file `_variables.scss`
4. Build the Bootstrap release using `npm run dist` 
5. Overwrite the release files in `src/webapp/dist` with the new files

## Visualizing the media breakpoints

You can see the available breakpoints by including the following HTML snippet in your view: 

```
        <div class="col-12">
            <span class="badge badge-dark d-xxxl-inline d-none">xxxl</span>
            <span class="badge badge-dark d-xxl-inline d-xxxl-none d-none">xxl</span>
            <span class="badge badge-dark d-xl-inline d-xxl-none d-none">xl</span>
            <span class="badge badge-dark d-lg-inline d-xl-none d-none">lg</span>
            <span class="badge badge-dark d-md-inline d-lg-none d-none">md</span>
            <span class="badge badge-dark d-sm-inline d-md-none d-none">sm</span>
            <span class="badge badge-dark d-inline d-sm-none">xs</span>
        </div>
```

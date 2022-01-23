
# react-native-plugtest

## Getting started

`$ npm install react-native-plugtest --save`

### Mostly automatic installation

`$ react-native link react-native-plugtest`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-plugtest` and add `RNPlugtest.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPlugtest.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPlugtestPackage;` to the imports at the top of the file
  - Add `new RNPlugtestPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-plugtest'
  	project(':react-native-plugtest').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-plugtest/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-plugtest')
  	```


## Usage
```javascript
import RNPlugtest from 'react-native-plugtest';

// TODO: What to do with the module?
RNPlugtest;
```
  
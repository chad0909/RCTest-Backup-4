# bunjang_ios_chad

Team Proposal : https://www.notion.so/softsquared/_D-9b8a20c17b374a7aa9de32714d01f971

---
---

# Objectives
## 1주차 목표
- 로그인 화면
- 홈 화면
- 뼈대, 레이아웃 구성
- 이미지 리소스 준비
- 소셜미디어 로그인 API 구현
- 로그인 API 구현

---
---

# Daily achievements
## 220716
- Make Proposal (100%)
- Make To-Do-List (100%)
- Template & App Study (100%)

- Study [**Will Study when needed**]
  - StickyHeader
  - RecentSearch(View Add and Delete according to User)
  - NavigationBar Title Popup when scrolldown
  - getAuthority to album

#### Personal Proposal

<img width="1582" alt="스크린샷 2022-07-21 오전 9 43 25" src="https://user-images.githubusercontent.com/108044639/180105955-13fe9364-3994-43d5-a175-c1b6f68e5e69.png">
<img width="1755" alt="스크린샷 2022-07-21 오전 9 43 57" src="https://user-images.githubusercontent.com/108044639/180105984-7489a7ce-e2d1-4b6a-be0a-437f33cebbef.png">
<img width="1851" alt="스크린샷 2022-07-21 오전 9 40 57" src="https://user-images.githubusercontent.com/108044639/180105877-be18f709-ee6f-4af0-876b-b25a32635b3a.png">




## 220717
- Made LoginPage (100%)
- Made DiffLoginPage(100%)
- Made Tabbar(prototype) (100%)
- Made ChatScreen BUT need API (80%)
- Ui nearly finished for RegisterScreen + need API (70%)
  - Button action when click needed
  - collectionView need edit (indent)
- Screen Transition is strange(keeps on pushing, need edit)

#### Image
<img width="2032" alt="스크린샷 2022-07-21 오전 9 38 20" src="https://user-images.githubusercontent.com/108044639/180105543-c4fb1e3f-2886-4a60-9a81-632bec69147b.png">



## 220718

- Made Mypage (60%)
  - API needed
  - tabman needed
- Register Screen made (80%)
  - API needed
  - button Action needed
- Making RegisterAccount Screen (50%)
- Making HomeScreen (60%)

#### Image
<img width="1486" alt="스크린샷 2022-07-21 오전 9 37 32" src="https://user-images.githubusercontent.com/108044639/180105489-8eb9d4dd-9003-43a2-a54a-1dc8a6362012.png">


## 220719

- Made Setting Screen
- Made Alarm Screen
- Made Point Screen
- Made AllMenu with 3tabbar
- These are all made without API, Will put in API when all screens are approximately made.

#### Image
<img width="1693" alt="스크린샷 2022-07-19 오후 11 28 08" src="https://user-images.githubusercontent.com/108044639/179775335-12b8c03d-f8ab-4543-824f-a83262823c85.png">

## 220720

- Made Like Screen + Recent Screen
- Made Follower, Following Screen
- Made Transaction Record Screen
- Made Parcel Managament Screen
- Made MyFeed Screen
- Made MyPhonePrice Screen
- Made MyLocation Screen
- Making Friend Invitation Screen

#### Image
<img width="1751" alt="스크린샷 2022-07-21 오전 9 33 13" src="https://user-images.githubusercontent.com/108044639/180105114-97bbcf0e-7b55-48bd-9e99-c9cd5af993d7.png">

## 220721
- Made Brand Category Screen
- Made Category Screen
- Finished Friend Invitation Screen
- Added 2 more screens to Diff. Login Screen
- 1 API (Post and get Verification Message) Added

#### Image

<img width="2136" alt="스크린샷 2022-07-22 오전 1 22 12" src="https://user-images.githubusercontent.com/108044639/180264746-aab5a04f-b46e-4a77-90a6-99213b15c6c0.png">
<img width="1715" alt="스크린샷 2022-07-22 오전 1 23 04" src="https://user-images.githubusercontent.com/108044639/180264754-3615ae30-629e-4d8d-9f40-ccb67607096e.png">


## 220722
- Made Diff Login Screen (Need Edit Little)
- API 1,2,3,5,8 (Done)


#### Image
<img width="2233" alt="스크린샷 2022-07-23 오전 11 06 46" src="https://user-images.githubusercontent.com/108044639/180586457-7b5e4139-81b2-459f-af8f-1b92f57a16e7.png">

API: 1,2,3,5,8

---
---


# To-Do-List

### LaunchScreen
- (Animation 2sec) **Need Research**
### LoginScreen
- ~~Main~~ 
- ~~Different Method Login~~ 
- Popup
### HomeScreen
- Remove icon background
- ~~Ad -> CollectionView(Auto Paging)~~ 
- Category -> CollectionView (Scrollbar)[API]
- StickyHead + Tabman ***Need Research***
- StretchyImage ***Need Research***
- Recommend Product -> CollectionView[API](Infinite Scroll?)
- Brand
  - if add {tableview add(logo&items) [API]
  - else {diff screen + recommend screen}
  - Edit -> getBrandData [API]
  - See all product -> getBrandItemData[API]
  
### SearchScreen (Present)
- Keyboard On
- Back to HomeScreen
- Follow On/Off
- RecommedBrand [API]
- Recent Search(Add and delete) -> **Need Research**

### RegisterScreen (Present)
- ~~MainScreen~~ 
- DirectDealingButton
- PhotoButton
  - getAuthorityToAlbum **Need Research**
- ProductName
- Category [API??]
- Tag
  - Add tag and give data back to previous screen
- Option

### ChatScreen
- ~~MainScreen~~ 
- Setting
- ChatSetting
- ChatInfo
- ChatInsideSetting

### MyPageScreen
- ~~PointScreen~~ 
- ~~AlarmScreen~~ 
- ~~SettingScreen~~ 
- StickyHead **Need Research**
- Search / Filter / Align / Edit
- LikeScreen
  - collectionView + CRUD (Recent Product)
  - Filter
  - CRUD 
- ~~FeedbackScreen~~
- ~~FollowerScreen~~
- ~~FollowingScreen~~
- ~~TransactionScreen~~
- ~~ParcelManagementScreen~~
- SellerCenterScreen
  - Left Screen Pop up **Need Research**
  - NavigationBar Title Popups when Scroll down ***Need Research***
- ServiceCenterScreen
  - GetID [API]
  
---
---

# Reference

### Programming
##### Button Custom Font
https://stackoverflow.com/questions/25002017/how-to-change-font-of-uibutton-with-swift

##### PageControl (self is error. have to change)
https://developer-fury.tistory.com/40

##### Stretchy Image
https://www.freecodecamp.org/news/tutorial-creating-stretchy-layouts-on-ios-using-auto-layout-3fa974fa5e28/

##### textField placeholder
https://cozzin.tistory.com/27

##### UserDefaults
https://zeddios.tistory.com/107



### Git
https://coding-factory.tistory.com/620







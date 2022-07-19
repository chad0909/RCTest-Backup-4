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
![Rc Test - 번개장터-1](https://user-images.githubusercontent.com/108044639/179356884-ed7a91b9-b78a-441c-91e3-5955ae57fe6a.jpg)
![Rc Test - 번개장터-2](https://user-images.githubusercontent.com/108044639/179356944-da88ceaa-b0b6-40d4-aa96-0f924e4d2bf6.jpg)
![Rc Test - 번개장터-3](https://user-images.githubusercontent.com/108044639/179356949-cf94b6a8-4cdd-4e9a-9f86-6cc2b62e0646.jpg)
![Rc Test - 번개장터-4](https://user-images.githubusercontent.com/108044639/179356950-b8a7841c-6421-403e-a8da-5e01ac77d140.jpg)
![Rc Test - 번개장터-5](https://user-images.githubusercontent.com/108044639/179356953-c88eb7ff-7083-46f4-822f-6cb338d4b519.jpg)
![Rc Test - 번개장터-6](https://user-images.githubusercontent.com/108044639/179356957-07e82713-d0d1-4c19-9258-645015603152.jpg)
![Rc Test - 번개장터-7](https://user-images.githubusercontent.com/108044639/179356959-70a263bb-b037-4a89-81bc-0f83a732ca64.jpg)
![Rc Test - 번개장터-8](https://user-images.githubusercontent.com/108044639/179356962-7c602c49-d356-4898-b631-90f3244dd368.jpg)
![Rc Test - 번개장터-9](https://user-images.githubusercontent.com/108044639/179356966-8c3ba684-b6e2-490e-9044-559878b39475.jpg)
![Rc Test - 번개장터-10](https://user-images.githubusercontent.com/108044639/179356968-2cbb0ace-7676-4aa4-8685-288b7d2e6d8c.jpg)

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
<img width="445" alt="LoginPage" src="https://user-images.githubusercontent.com/108044639/179404259-72684c87-bad4-4d09-8919-99bfb5af8197.png">
<img width="428" alt="DiffLoginPage" src="https://user-images.githubusercontent.com/108044639/179404260-528491f2-7c0e-42bd-9e75-24a6d5615eaf.png">
<img width="432" alt="RegisterPage" src="https://user-images.githubusercontent.com/108044639/179404261-810096e3-80a1-452d-b30c-11c39f5cbf83.png">
<img width="436" alt="ChatPage" src="https://user-images.githubusercontent.com/108044639/179404264-aa3b462a-c4b0-42a2-8df8-694717e20586.png">


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
<img width="387" alt="스크린샷 2022-07-19 오전 12 20 57" src="https://user-images.githubusercontent.com/108044639/179545244-3cc07e1c-f83a-40d2-af61-45a8b6597682.png">
<img width="387" alt="스크린샷 2022-07-19 오전 12 20 08" src="https://user-images.githubusercontent.com/108044639/179545254-e691dffd-62dc-47b7-89fb-3293120693b9.png">
<img width="215" alt="스크린샷 2022-07-19 오전 12 20 37" src="https://user-images.githubusercontent.com/108044639/179545259-99e56b9f-8471-4589-9db7-b00ea7b48f5d.png">

## 220719

- Made Setting Screen
- Made Alarm Screen
- Made Point Screen
- Made AllMenu with 3tabbar
- These are all made without API, Will put in API when all screens are approximately made.


<img width="1693" alt="스크린샷 2022-07-19 오후 11 28 08" src="https://user-images.githubusercontent.com/108044639/179775335-12b8c03d-f8ab-4543-824f-a83262823c85.png">


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
- FeedbackScreen
- FollowerScreen 
- FollowingScreen
- TransactionScreen
- ParcelManagementScreen
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

##### textView placeholder

### Git
https://coding-factory.tistory.com/620







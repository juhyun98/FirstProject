### FriendFit 프로젝트
---




  

## 개요
friendFit은 위치기반 운동정보 종합 플래폼으로 신뢰할 수 있는 운동정보 리뷰와 커뮤니티 기능을 구현하였습니다.

###### 기간: 2023.07.14 ~ 2023.08.18 (약 1달)

###### 주요 기능 및 특징:

1. 위치 기반 서비스: friendFit은 사용자의 현재 위치를 기반으로 주변의 운동 시설, 헬스장, 공원, 자전거 도로 등을 편리하게 찾을 수 있게 해줍니다.
2. 운동 컬럼: friendFit은 운동에 관한 유용한 정보, 올바른 운동 방법, 영양 팁 등을 제공하여 사용자들의 건강한 라이프스타일을 지원합니다.
3. 커뮤니티 서비스: 운동 카테고리에 맞춰 커뮤니티의 전반적인 기능을 지원합니다.
4. OCR 리뷰 인증 서비스: OCR 기반 리뷰 인증 서비스를 지원합니다.
5. 거미줄 같은 웹페이지: 어디에 있든 원하는 페이지를 빠르게 탐색할 수 있는 망형 구조의 웹사이트입니다.

###### PPT 및 발표자료:

* ppt: <https://www.canva.com/design/DAFrFnZcob8/kUSTRc3J5PFxsNJHxcYGvA/edit>
* 시연 영상: <https://youtu.be/v00CfGb3rGI>
* 발표 영상: <https://youtu.be/Q4U1jswDTQI>
* ER 다이어그램 개요: <https://app.diagrams.net/#Hrimgosu%2Fproject%2Fmaster%2Fdocument%2F%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EB%8B%A4%EC%9D%B4%EC%96%B4%EA%B7%B8%EB%9E%A8.drawio>
* ER 다이어그램 상세: <https://app.diagrams.net/#Hrimgosu%2Fproject%2Fmaster%2Fdocument%2FER%20DIAGRAM.drawio>













## HOW TO USE
friendFut은 eclipse 2023-06r, oracle, javasdk(Java SE Development Kit 8), apache tomcat 9 를 바탕으로 제작되었습니다.
라이브러리는 전부 깃허브에 포함되어 있으므로 따로 다운로드할 필요는 없습니다.
* 설치 가이드: <https://youtu.be/SdbzUNyic9I>

###### 1. git clone 생성

    git init
    git clone https://github.com/rimgosu/friendFit.git
   
###### 2. eclipse 세팅
1. switch workspace로 project 폴더 선택
2. import projects - general - existing projects into workspace - browse - 폴더 선택 - finish
3. apache tomcat 불러오기 servers - no servers are available. click this link to create a new server... - apache - tomcat v9.0 server - browse - resources - apache-tomcat-9.0.78 선택 (friendFit에 포함되어 있습니다.) - tomcat v 9.0 더블클릭 - http/1.1을 8094~8099로 수정 후 저장
4. project explorer - friendFit 우클릭 - properties - java build path - classpath에 있는 jar 라이브러리 전부 삭제 - apply and close
5. project explorer - friendFit 우클릭 - properties - project facets - java, javascript, dynamic web module 선택 후 apply and close
6. src- main - webapp - index.jsp 실행

###### 3. key 세팅
C:\keys\keys.json 생성

    {
    "keys": [
        {
            "clovaOCRPrivateKey": "clovaOCRPrivateKey 키 입력"
        },
        {
            "clovaOCRInvokeURL": "clovaOCRInvokeURL 키 입력"
        },

        {
            "gptPrivateKey": "gptPrivateKey 키 입력"
        },

        {
            "naverMapID": "naverMapID 키 입력"
        },
        {
            "naverMapPassword": "naverMapPassword 키 입력"
        }
        
    ]
    }

다음 양식에 맞추어 키를 발급 받으면 ocr 영수증 리뷰, 지도 기능을 이용할 수 있습니다.












## 개선사항(느낀점)
#### 반응형 웹페이지로 제작해 모바일에서 구동되게끔!
처음 제작할 때부터 모바일과의 연동을 생각했는데, 그러려면 서버를 호스팅해야하고, 서버를 호스팅하려면 AWS를 배워야하고
당장 프로젝트 마감일은 다가와서 AWS elastic beanstalk이라도 써서 호스팅을 하고 싶었지만 jsp로 서버를 호스팅하는 것에 대한 자료는 전무했다.
외국 자료 다 뒤져봐도 spring 기반으로 자료가 구성되있음.
호스팅을 하려고 해도 자료도, 지식도, 시간도 부족한 상황인지라 다음 프로젝트 때는 spring을 배우니 그 기술을 토대로 웹 호스팅은 꼭 해봐야겠다.

#### 좀 더 완벽한 페이지를 만들자
첫 프로젝트라서 걱정을 많이 했지만 다행히 배웠던 내용을 활용하여 구현할 수 있었고 4주라는 짧은 시간안에 많은
기능을 구현해야 해서 팀원들과 자주 소통하며 업무분담의 중요성을 깨달았으며 제가 맡은 업무를 반드시 기한 안에 
수행해야 한다는 상황이 저의 책임감을 키웠습니다. 그리고 프로젝트 수행중에 팀원과의 지식공유도 저의 성장에 많은
도움이 되었습니다. 아쉬웠던 점은 시간이 더 주어졌더라면 여러가지 기능을 더 만들어 보고 싶고 더 완벽하게 구현하고 
싶다는 생각이 들었습니다.

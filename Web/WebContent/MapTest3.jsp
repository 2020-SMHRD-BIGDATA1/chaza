<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ī�װ��� ��� �˻��ϱ�</title>
    <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
.map_wrap {position:relative;overflow:hidden;width:60%;height:800px;margin-left: 20%;margin-right: 20%;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}

.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}

.radius_border{border:1px solid #919191;border-radius:5px;}     
.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:130px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '���� ���', sans-serif;}
.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
.custom_typecontrol .btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
.custom_typecontrol .btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
.custom_typecontrol .btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
.custom_typecontrol .selected_btn:hover {color:#fff;}   
.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}

.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;font-size: 12px;font-family: 'Malgun Gothic', dotum, '����', sans-serif;overflow:hidden;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 00;box-shadow: 0px 1px 2px #888;}
.info .title {padding:5px 20px 0 5px;height: 30px;background: #6666ff;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;color:#fff;text-align:center}
.info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
.info .close:hover {cursor: pointer;}
.info .body {position: relative;overflow: hidden;}
.info .desc {position: relative;margin: 13px 10px 0 10px;}
.desc .ellipsis { overflow: hidden;text-overflow: ellipsis;word-break:break-all;white-space:normal;}
.info .roadsearch {float:left; bottom: 14px;right:10px;width: 70px;height: 30px;border: 1px;overflow: hidden;border:1px solid #ccc;color:#000;background-color:#fff;text-align:center;line-height:2.5em}
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.info .tel {color: #5085BB;}
</style>
</head>
<body>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
            ����
        </li>       
        <li id="MT1" data-order="1"> 
            <span class="category_bg mart"></span>
            ��Ʈ
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            �౹
        </li>  
        <li id="OL7" data-order="3"> 
            <span class="category_bg oil"></span>
            ������
        </li>  
        <li id="CE7" data-order="4"> 
            <span class="category_bg cafe"></span>
            ī��
        </li>  
        <li id="CS2" data-order="5"> 
            <span class="category_bg store"></span>
            ������
        </li>      
    </ul>
    <div class="custom_typecontrol radius_border">
        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">����</span>
        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">��ī�̺�</span>
    </div>
    <!-- ���� Ȯ��, ��� ��Ʈ�� div �Դϴ� -->
    <div class="custom_zoomcontrol radius_border"> 
        <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="Ȯ��"></span>  
        <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="���"></span>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b2f98b9a933cf88853f3d7158a0c56fd&libraries=services,clusterer,drawing"></script>
<script>
// ��Ŀ�� Ŭ������ �� �ش� ����� �������� ������ Ŀ���ҿ��������Դϴ�
var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
    contentNode = document.createElement('div'), // Ŀ���� ���������� ������ ������Ʈ �Դϴ� 
    markers = [], // ��Ŀ�� ���� �迭�Դϴ�
    currCategory = ''; // ���� ���õ� ī�װ��� ������ ���� �����Դϴ�
 
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(33.451475, 126.570528), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����                  
    };  

// ������ �����մϴ�    
var map = new kakao.maps.Map(mapContainer, mapOption); 

function setMapType(maptype) { 
    var roadmapControl = document.getElementById('btnRoadmap');
    var skyviewControl = document.getElementById('btnSkyview'); 
    if (maptype === 'roadmap') {
        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
        roadmapControl.className = 'selected_btn';
        skyviewControl.className = 'btn';
    } else {
        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
        skyviewControl.className = 'selected_btn';
        roadmapControl.className = 'btn';
    }
}

// ���� Ȯ��, ��� ��Ʈ�ѿ��� Ȯ�� ��ư�� ������ ȣ��Ǿ� ������ Ȯ���ϴ� �Լ��Դϴ�
function zoomIn() {
    map.setLevel(map.getLevel() - 1);
}

// ���� Ȯ��, ��� ��Ʈ�ѿ��� ��� ��ư�� ������ ȣ��Ǿ� ������ Ȯ���ϴ� �Լ��Դϴ�
function zoomOut() {
    map.setLevel(map.getLevel() + 1);
}

// ��� �˻� ��ü�� �����մϴ�
var ps = new kakao.maps.services.Places(map); 

// ������ idle �̺�Ʈ�� ����մϴ�
kakao.maps.event.addListener(map, 'idle', searchPlaces);

// Ŀ���� ���������� ������ ��忡 css class�� �߰��մϴ� 
contentNode.className = 'placeinfo_wrap';

// Ŀ���� ���������� ������ ��忡 mousedown, touchstart �̺�Ʈ�� �߻�������
// ���� ��ü�� �̺�Ʈ�� ���޵��� �ʵ��� �̺�Ʈ �ڵ鷯�� kakao.maps.event.preventMap �޼ҵ带 ����մϴ� 
addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

// Ŀ���� �������� �������� �����մϴ�
placeOverlay.setContent(contentNode);  

// �� ī�װ��� Ŭ�� �̺�Ʈ�� ����մϴ�
addCategoryClickEvent();

// ������Ʈ�� �̺�Ʈ �ڵ鷯�� ����ϴ� �Լ��Դϴ�
function addEventHandle(target, type, callback) {
    if (target.addEventListener) {
        target.addEventListener(type, callback);
    } else {
        target.attachEvent('on' + type, callback);
    }
}

// ī�װ� �˻��� ��û�ϴ� �Լ��Դϴ�
function searchPlaces() {
    if (!currCategory) {
        return;
    }
    
    // Ŀ���� �������̸� ����ϴ� 
    placeOverlay.setMap(null);

    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
    removeMarker();
    
    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
}

// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // ���������� �˻��� �Ϸ������ ������ ��Ŀ�� ǥ���մϴ�
        displayPlaces(data);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
        // �˻������ ���°�� �ؾ��� ó���� �ִٸ� �̰��� �ۼ��� �ּ���

    } else if (status === kakao.maps.services.Status.ERROR) {
        // ������ ���� �˻������ ������ ���� ��� �ؾ��� ó���� �ִٸ� �̰��� �ۼ��� �ּ���
        
    }
}

// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function displayPlaces(places) {

    // ���° ī�װ��� ���õǾ� �ִ��� ���ɴϴ�
    // �� ������ ��������Ʈ �̹��������� ��ġ�� ����ϴµ� ���˴ϴ�
    var order = document.getElementById(currCategory).getAttribute('data-order');

    

    for ( var i=0; i<places.length; i++ ) {

            // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

            // ��Ŀ�� �˻���� �׸��� Ŭ�� ���� ��
            // ��������� ǥ���ϵ��� Ŭ�� �̺�Ʈ�� ����մϴ�
            (function(marker, place) {
                kakao.maps.event.addListener(marker, 'click', function() {
                    displayPlaceInfo(place);
                });
            })(marker, places[i]);
    }
}

// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function addMarker(position, order) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
        imageSize = new kakao.maps.Size(27, 28),  // ��Ŀ �̹����� ũ��
        imgOptions =  {
            spriteSize : new kakao.maps.Size(72, 208), // ��������Ʈ �̹����� ũ��
            spriteOrigin : new kakao.maps.Point(46, (order*36)), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
            offset: new kakao.maps.Point(11, 28) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // ��Ŀ�� ��ġ
            image: markerImage 
        });

    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�

    return marker;
}

// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// Ŭ���� ��Ŀ�� ���� ��� �������� Ŀ���� �������̷� ǥ���ϴ� �Լ��Դϴ�
function displayPlaceInfo (place) {
    var content = '<div class="placeinfo">' +
                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

    if (place.road_address_name) {
        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                    '  <span class="jibun" title="' + place.address_name + '">(���� : ' + place.address_name + ')</span>';
    }  else {
        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
    }                
   
    content += '    <span class="tel">' + place.phone + '</span>' + 
                '</div>' + 
                '<div class="after"></div>';

    contentNode.innerHTML = content;
    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
    placeOverlay.setMap(map);  
    
    
    console.log(place.y, place.x);
    
    
}


// �� ī�װ��� Ŭ�� �̺�Ʈ�� ����մϴ�
function addCategoryClickEvent() {
    var category = document.getElementById('category'),
        children = category.children;

    for (var i=0; i<children.length; i++) {
        children[i].onclick = onClickCategory;
    }
}

// ī�װ��� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
function onClickCategory() {
    var id = this.id,
        className = this.className;

    placeOverlay.setMap(null);

    if (className === 'on') {
        currCategory = '';
        changeCategoryClass();
        removeMarker();
    } else {
        currCategory = id;
        changeCategoryClass(this);
        searchPlaces();
    }
}

// Ŭ���� ī�װ����� Ŭ���� ��Ÿ���� �����ϴ� �Լ��Դϴ�
function changeCategoryClass(el) {
    var category = document.getElementById('category'),
        children = category.children,
        i;

    for ( i=0; i<children.length; i++ ) {
        children[i].className = '';
    }

    if (el) {
        el.className = 'on';
    } 
}

</script>
<script>
var mapContainer = document.getElementById('map'), // ������ �߽���ǥ
    mapOption = { 
        center: new kakao.maps.LatLng(33.451475, 126.570528), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ������ ��Ŀ�� ǥ���մϴ� 
var marker = new kakao.maps.Marker({
    map: map, 
    position: new kakao.maps.LatLng(33.451475, 126.570528)
});

// Ŀ���� �������̿� ǥ���� ������ �Դϴ�
// Ŀ���� �������̴� �Ʒ��� ���� ����ڰ� �����Ӱ� �������� �����ϰ� �̺�Ʈ�� ������ �� �ֱ� ������
// ������ �̺�Ʈ �޼ҵ带 �������� �ʽ��ϴ� 
var content = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            īī�� �����̽����' + 
            '            <div class="close" onclick="closeOverlay()" title="�ݱ�"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
           
            '            <div class="desc">' + 
            '                <div class="ellipsis">���� ���� ������ �Ҷ˷ɸ����� 32 (��Ÿ�, ����������ްԼ�)</div>' +  
            '                <div style="float : left;"><a href="https://www.kakaocorp.com/main" target="_blank" class="tel" style = "padding-right: 120px;">062-375-1921</a></div>' + 
            '            </div>' + 
            
            '            <div onclick="search();" class="roadsearch" style="float : left;">' + 
            '				 <a href="https://map.kakao.com/link/to/Hello World!,33.451475, 126.570528" style="color:blue" target="_blank">���Ž��</a>'+
            '          </div>' +  
            
            '        </div>' + 
            '    </div>' +    
            '</div>';
            

// ��Ŀ ���� Ŀ���ҿ������̸� ǥ���մϴ�
// ��Ŀ�� �߽����� Ŀ���� �������̸� ǥ���ϱ����� CSS�� �̿��� ��ġ�� �����߽��ϴ�
var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

// ��Ŀ�� Ŭ������ �� Ŀ���� �������̸� ǥ���մϴ�
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

// Ŀ���� �������̸� �ݱ� ���� ȣ��Ǵ� �Լ��Դϴ� 
function closeOverlay() {
    overlay.setMap(null);     
}
</script>
<script>



</script>
</body>
</html>
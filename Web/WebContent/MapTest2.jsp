<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>������ ����� ��Ʈ�� �ø���</title>
    <style>
html, body {width:100%;height:100%;margin:0;padding:0;} 
.map_wrap {position:relative;overflow:hidden;width:60%;height:800px;margin-left: 20%;margin-right: 20%;}
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
</style>
</head>
<body> 
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
    <!-- ����Ÿ�� ��Ʈ�� div �Դϴ� -->
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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b2f98b9a933cf88853f3d7158a0c56fd"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ����Ÿ�� ��Ʈ���� ���� �Ǵ� ��ī�̺� ��ư�� Ŭ���ϸ� ȣ��Ǿ� ����Ÿ���� �ٲٴ� �Լ��Դϴ�
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

//������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
var marker = new kakao.maps.Marker({ 
    // ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
    position: map.getCenter() 
}); 
// ������ ��Ŀ�� ǥ���մϴ�
marker.setMap(map);

// ������ Ŭ�� �̺�Ʈ�� ����մϴ�
// ������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // Ŭ���� ����, �浵 ������ �����ɴϴ� 
    var latlng = mouseEvent.latLng; 
    
    // ��Ŀ ��ġ�� Ŭ���� ��ġ�� �ű�ϴ�
    marker.setPosition(latlng);
    
    var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
    message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
    
    place_X = latlng.getLat();
    place_Y = latlng.getLng();    
    
    console.log(place_X);
    console.log(place_Y);
    
    /* var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message; */
    
});
</script>
</body>
</html>
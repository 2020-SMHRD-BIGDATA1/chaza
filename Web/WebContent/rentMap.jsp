<%@page import="controller.RentCarDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.RentCarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>���� SUV ����ī ��ü ��Ȳ</title>
    <style>
html, body {width:100%;height:100%;margin:0;padding:0;} 
.map_wrap {position:relative;overflow:hidden;width:100%;height:100%;}
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

#totalinfo {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;font-size: 12px;font-family: 'Malgun Gothic', dotum, '����', sans-serif;overflow:hidden;line-height: 1.5;}
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

<% RentCarDAO rentcardao= new RentCarDAO(); 
	ArrayList<RentCarDTO> list = rentcardao.getall();
	
	System.out.println(list.get(1000).getShop_name());
	System.out.println(list.get(1000).getShop_addr());
	System.out.println(list.get(1000).getShop_tel());
	System.out.println(list.get(1000).getRent_lat());
	System.out.println(list.get(1000).getRent_lng());
	%>
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
        center: new kakao.maps.LatLng(35.9001314, 127.7145568), // ������ �߽���ǥ
        level: 12 // ������ Ȯ�� ����
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
</script>
<script>
// ��Ŀ�� ǥ���� ��ġ�� ������ ������ �ִ� ��ü �迭�Դϴ�

var positions = [];
	     <%for(int i=0; i<list.size();i++){%>
	     positions.push({
			 content: '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            <%=list.get(i).getShop_name()%>' + 
	            '            <div class="close" onclick="closeOverlay()" title="�ݱ�"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	           
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">'+'<%=list.get(i).getShop_addr()%>' +
	            '                <div class="tel">'+'<%=list.get(i).getShop_tel()%>' +
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>',
		     latlng: new kakao.maps.LatLng(<%=list.get(i).getRent_lat()%>, <%=list.get(i).getRent_lng()%>)
	     })
	        <%};%>
	        
for (var i = 0; i < positions.length; i ++) {
    // ��Ŀ�� �����մϴ�
    var marker = new kakao.maps.Marker({
        map: map, // ��Ŀ�� ǥ���� ����
        position: positions[i].latlng // ��Ŀ�� ��ġ
    });

    // ��Ŀ�� ǥ���� ���������츦 �����մϴ� 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // ���������쿡 ǥ���� ����
    });

    // ��Ŀ�� mouseover �̺�Ʈ�� mouseout �̺�Ʈ�� ����մϴ�
    // �̺�Ʈ �����ʷδ� Ŭ������ ����� ����մϴ� 
    // for������ Ŭ������ ����� ���� ������ ������ ��Ŀ���� �̺�Ʈ�� ��ϵ˴ϴ�
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// ���������츦 ǥ���ϴ� Ŭ������ ����� �Լ��Դϴ� 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// ���������츦 �ݴ� Ŭ������ ����� �Լ��Դϴ� 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}

</script>
</body>
</html>
/**
  *Author: David Boggus
  *URL: www.boggusweb.com
  *Date: 10/11/2006
  *
  *Objective: To create a javascript menu that supports three different types of
  *           menus with little if any code that requires knowlege of the kind of
  *           menu that is being created. This version will also support multiple
  *           levels of sub menus.
  **/
  
var mainmenu = {
    init: function(){
        var uls = document.getElementsByTagName('ul');
        for(var i = 0; i < uls.length; i++){
            if(uls[i].className.search(/\bmainmenu\b/) == -1) continue;
            var menu = uls[i];
            var subMenus = menu.getElementsByTagName('ul');
            for(var j = 0; j < subMenus.length; j++){
                var parentLI = subMenus[j].parentNode;
                parentLI.hasSubMenu = true;
                if(menu.className.search(/\bonClick\b/) !=-1){
                    addEvent(parentLI, 'click', mainmenu.click, false);
                    parentLI.getElementsByTagName('a')[0].href="#"
                }else{
                    addEvent(parentLI, 'mouseout', mainmenu.getMoutFor(parentLI), false);
                    addEvent(parentLI, 'mouseover', mainmenu.getMoverFor(parentLI), false);
                }
                parentLI.getElementsByTagName('a')[0].className += " subMenu";
            }
        }
    },
    
    getMoverFor:function(node){
        return function(){mainmenu.mOver(node);};
    },
    
    getMoutFor:function(node){
        return function(){mainmenu.mTimeout(node);};
    },
    
    mOver: function(targetElement){
        var target = targetElement;
        clearTimeout(target.timeout);
        for(var i = 0; i < target.childNodes.length; i++){
            var node = target.childNodes[i];
            if(node.nodeName.toLowerCase() == 'ul'){
                target.getElementsByTagName('a')[0].className += ' click';
                target.className += ' click';
                node.className += ' click';
            }
        }
    },
    
    mTimeout: function(targetElement){
        var target = targetElement;
        target.timeout = setTimeout(function(){mainmenu.mOut(target);}, 50);
    },
    
    mOut:function(target){
        for(var i = 0; i < target.childNodes.length; i++){
            var node = target.childNodes[i];
            if(node.nodeName.toLowerCase() == 'ul'){
                target.getElementsByTagName('a')[0].className = target.getElementsByTagName('a')[0].className.replace(/click/g, '');
                node.className = node.className.replace(/click/g, '');
                target.className = target.className.replace(/click/g, '');
            }
        }
    },
    
    click:function(e){
        if(window.event){
            window.event.cancelBubble = true;
        }
        if(e && e.stopPropagation){
            e.stopPropagation();
        }
        var target = (window.event)? window.event.srcElement : (e)? e.target : null;
        
        if(!target || !(target = mainmenu.getTarget(target, 'li')))return;
        
        if(target.getElementsByTagName('a')[0].className.search(/\bclick\b/) == -1){
            mainmenu.mOver(target);
        }else{
            mainmenu.mOut(target);
        }
        return false;
    },
    
    getTarget: function(target, elm){
        if(target.nodeName.toLowerCase() != elm && target.nodeName.toLowerCase() != 'body'){
            return mainmenu.getTarget(target.parentNode, elm);
        }else if(target.nodeName.toLowerCase() == 'body'){
            return null;
        }else{
            return target;
        }
    }
}
    
function addEvent(elm, evType, fn, useCapture){  //cross-browser event handling for IE5+, NS6+, and Mozilla/Gecko By Scott Andrew
	if(elm.addEventListener){
		elm.addEventListener(evType, fn, useCapture);
		return true;
	}else if(elm.attachEvent){
		var r = elm.attachEvent('on' + evType, fn);
		return r;
	}else{
		elm['on' + evType] = fn;
	}
}

addEvent(window, 'load', mainmenu.init, false);
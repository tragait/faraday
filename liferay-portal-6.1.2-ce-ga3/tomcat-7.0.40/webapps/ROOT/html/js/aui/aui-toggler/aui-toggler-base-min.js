AUI.add("aui-toggler-base",function(p){var ac=p.Lang,K=ac.isBoolean,Q=ac.isObject,u=ac.isUndefined,m=ac.toInt,C="-",x=".",O="",G="px",a=" ",H="animated",T="animating",D="bindDOMEvents",U="click",q="collapsed",R="content",F="down",b="enter",j="esc",c="expanded",k="expandedChange",i="getBoundingClientRect",S="gutter",M="header",V="helper",ab="keydown",y="left",h="linear",n="marginTop",l="minus",r="num_minus",z="num_plus",o="parentNode",w="plus",W="right",a="space",B="toggler",Y="transition",g="transitionEnd",e="transitionStart",v="up",Z="wrapper",f=p.getClassName,t=f(B,R),aa=f(B,R,q),N=f(B,R,c),s=f(B,R,Z),d=f(B,M),J=f(B,M,q),I=f(B,M,c),L={"false":aa,"true":N},E={"false":J,"true":I},P='<div class="'+s+'"></div>';var X=p.Component.create({NAME:B,ATTRS:{animated:{validator:K,value:false,writeOnce:true},animating:{validator:K,value:false},bindDOMEvents:{validator:K,value:true,writeOnce:true},content:{setter:p.one},expanded:{validator:K,value:true},header:{setter:p.one},transition:{validator:Q,value:{duration:0.4}}},EXTENDS:p.Base,headerEventHandler:function(ad,A){if(ad.type===U||ad.isKey(b)||ad.isKey(a)){ad.preventDefault();return A.toggle();}else{if(ad.isKey(F)||ad.isKey(W)||ad.isKey(z)){ad.preventDefault();return A.expand();}else{if(ad.isKey(v)||ad.isKey(y)||ad.isKey(j)||ad.isKey(r)){ad.preventDefault();return A.collapse();}}}},prototype:{initializer:function(){var A=this;A.bindUI();A.syncUI();A._uiSetExpanded(A.get(c));},bindUI:function(){var A=this;var ad=A.get(M);ad.setData(B,A);A.on(k,p.bind(A._onExpandedChange,A));if(A.get(D)){ad.on([U,ab],p.rbind(X.headerEventHandler,null,A));}},syncUI:function(){var A=this;A.get(R).addClass(t);A.get(M).addClass(d);},animate:function(ad,ae){var A=this;A._uiSetExpanded(true);var af=p.merge(ad,A.get(Y));A.get(R).transition(af,p.bind(ae,A));},collapse:function(){var A=this;return A.toggle(false);},expand:function(){var A=this;return A.toggle(true);},getContentHeight:function(){var ad=this;var ag=ad.get(R);var af=ad.get(c),A;if(!af){ad._uiSetExpanded(true);}if(ag.hasMethod(i)){var ae=ag.invoke(i);if(ae){A=ae.bottom-ae.top;}}else{A=ag.get(OFFSET_HEIGHT);}if(!af){ad._uiSetExpanded(false);}return A;},toggle:function(ae){var ad=this;if(u(ae)){ae=!ad.get(c);}if(ad.get(H)){if(ad.get(T)){return ae;}var af=ad.get(R);var A=ad.getContentHeight();var ag=m(af.getStyle(n));if(!ad.wrapped){af.wrap(P);if(ae){ag=-(A+ag);af.setStyle(n,ag);}ad.wrapped=true;}ad.set(T,true);ad.animate({marginTop:-(A+ag)+G},function(){ad.set(T,false);ad.set(c,ae);});}else{ad.set(c,ae);}return ae;},_onExpandedChange:function(ad){var A=this;A._uiSetExpanded(ad.newVal);},_uiSetExpanded:function(ad){var A=this;A.get(R).replaceClass(L[!ad],L[ad]);A.get(M).replaceClass(E[!ad],E[ad]);}}});p.Toggler=X;},"1.5.2",{skinnable:true,requires:["aui-base","transition"]});
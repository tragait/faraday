AUI.add("aui-tree-paginator",function(m){var e=m.Lang,k=e.isObject,p=e.isValue,s=m.getClassName,g="children",n="container",f="end",c="io",j="limit",d="Load more results",u="node",b="ownerTree",a="paginator",o="start",r="tree",q="tree-node-io",i="paginatorClick",h=s(r,u,a),l='<a class="'+h+'" href="javascript:void(0);">{moreResultsLabel}</a>';function t(w){var v=this;m.after(v._bindPaginatorUI,this,"bindUI");m.after(v._syncPaginatorUI,this,"syncUI");}t.ATTRS={paginator:{setter:function(x){var w=this;var v=m.Node.create(e.sub(l,{moreResultsLabel:x.moreResultsLabel||d}));return m.merge({alwaysVisible:false,autoFocus:true,element:v,endParam:f,limitParam:j,start:0,startParam:o},x);},validator:k}};t.prototype={_bindPaginatorUI:function(){var v=this;var w=v.get(a);if(w){w.element.on("click",m.bind(v._handlePaginatorClickEvent,v));}v._createEvents();},_createEvents:function(){var v=this;v.publish(i,{defaultFn:v._defPaginatorClickFn,prefix:q});},_defPaginatorClickFn:function(w){var v=this;var x=v.get(a);if(p(x.limit)){x.start=v.getChildrenLength();}if(v.get(c)){v.initIO();}},_handlePaginatorClickEvent:function(x){var v=this;var w=v.getEventOutputMap(v);v.fire(i,w);x.halt();},_syncPaginatorIOData:function(y){var v=this;var x=v.get(a);if(x&&p(x.limit)){var w=y.cfg.data||{};w[x.limitParam]=x.limit;w[x.startParam]=x.start;w[x.endParam]=(x.start+x.limit);y.cfg.data=w;}},_syncPaginatorUI:function(x){var B=this;var C=B.get(a);if(C){var A=true;if(x){A=(x.length>0);}var w=B.getChildrenLength();var v=C.start;var z=C.total||w;var D=w&&A&&(z>w);if(C.alwaysVisible||D){B.get(n).append(C.element.show());if(C.autoFocus){try{C.element.focus();}catch(y){}}}else{C.element.hide();}}}};m.TreeViewPaginator=t;},"1.5.2",{requires:["aui-base"],skinnable:false});
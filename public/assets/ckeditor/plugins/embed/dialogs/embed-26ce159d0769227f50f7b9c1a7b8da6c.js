(function(){CKEDITOR.dialog.add("embed",function(e){return{title:e.lang.embed.title,minWidth:CKEDITOR.env.ie&&CKEDITOR.env.quirks?368:350,minHeight:240,onShow:function(){this.getContentElement("general","content").getInputElement().setValue("")},onOk:function(){var e=this.getContentElement("general","content").getInputElement().getValue();this.getParentEditor().insertHtml(e)},contents:[{label:e.lang.common.generalTab,id:"general",elements:[{type:"html",id:"pasteMsg",html:'<div style="white-space:normal;width:340px;">'+e.lang.embed.pasteMsg+"</div>"},{type:"html",id:"content",style:"width:340px;height:170px",html:'<textarea style="width:346px;height:170px;resize: none;border:1px solid black;background-color:white"></textarea>',focus:function(){this.getElement().focus()}}]}]}})})();
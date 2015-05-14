package view 
{
	import com.hybrid.ui.ToolTip;
	import events.GlobalEventDispatcher;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author cymhappy
	 */
	public class ToolTips extends GlobalEventDispatcher
	{
		private static var instance:ToolTips;
		/**tip容器**/
		private var container:DisplayObjectContainer;
		
		/**默认tip**/
		private var defaultTip:ToolTip;
		
		/**tip字典**/
		private var tipDic:Dictionary;
		
		/**内容字典**/
		private var contentDic:Dictionary;
		
		
		public function ToolTips() 
		{
			if (instance) {
				throw new Error("单例,通过getInstance获取实例");
			}		
			
			tipDic = new Dictionary();
			contentDic = new Dictionary();
			defaultTip = initTip();
		}
		
		public static function getInstance():ToolTips
		{
			return instance?instance:(instance = new ToolTips());
		}
		/**
		 * 设置tip显示的层
		 * @param	container
		 */
		public function setup(container:DisplayObjectContainer):void
		{
			if (!this.container) {
				this.container = container;
			}
			
		}
		
		public function addTip(p:DisplayObject,content:Tipcontent):void
		{
			//var tip:ToolTip = tipDic[p]?tipDic[p]:defaultTip;
			p.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
			p.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut);
			
		}
		
		private function onMouseOut(e:MouseEvent):void 
		{
			
		}
		
		private function onMouseOver(e:MouseEvent):void 
		{
			
		}
		
		private function initTip():ToolTip
		{
			var tip:ToolTip = new ToolTip();
			//初始化操作 默认样式
			return tip;
		}
		
		public function removeTip(p:DisplayObject):void
		{
			
		}
		/**
		 * 获取tip显示对象,用于自定义格式,显示效果
		 * @return
		 */
		public function getTipview(p:DisplayObject):ToolTip
		{
			return tipDic[p]?tipDic[p]:(tipDic[p] = initTip());
		}

		
	}

}
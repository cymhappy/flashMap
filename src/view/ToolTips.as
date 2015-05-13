package view 
{
	import com.hybrid.ui.ToolTip;
	import events.GlobalEventDispatcher;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	/**
	 * ...
	 * @author cymhappy
	 */
	public class ToolTips extends GlobalEventDispatcher
	{
		private static var instance:ToolTips;
		/**tip容器**/
		private var container:DisplayObjectContainer;
		
		private var tip:ToolTip;
		
		public function ToolTips() 
		{
			if (instance) {
				throw new Error("单例,通过getInstance获取实例");
			}
			
			tip = new ToolTip();
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
		
		public function addTip(p:DisplayObject,tipcontent:Object = null):void
		{
			
		}
		
		public function removeTip(p:DisplayObject):void
		{
			
		}

		
	}

}
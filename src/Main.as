package 
{
	import events.IGlobalEventDispatcher;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	import view.Province;
	import view.ToolTips;
	
	/**
	 * ...
	 * @author cymhappy
	 */
	public class Main extends Sprite
	{
		[Embed(source="../map/chinaMap.swf", symbol="com.xinshiyun.map.chinaMap")]
		private var china:Class;
		
		/**中国地图**/
		private var chinaMap:Sprite;		
		/**行省的名字数组**/
		private var nameArr:Array = ["河北","河南","山西","山东","陕西","湖北","湖南","黑龙江","辽宁","吉林","江苏","浙江","安徽","福建","江西","海南","台湾","四川","甘肃","青海","贵州","云南","广东","内蒙古","新疆","西藏","广西","宁夏","北京","天津","上海","重庆"];
		/**行政省数组**/
		private var provinceArr:Vector.<Province> = new Vector.<Province>();
		
		/**tip层**/
		private var tipLayer:Sprite;
		/**内容层,地图放这个层**/
		private var contentLayer:Sprite;
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			/**tips**/
			tipLayer = new Sprite();			
			ToolTips.getInstance().addGlobalListener(toolTipsForward);
			ToolTips.getInstance().setup(tipLayer);
			
			/**地图**/
			contentLayer = new Sprite();
			chinaMap = new china() as Sprite;			
			chinaMap.scaleX = 1.7;
			chinaMap.scaleY = 1.7;			
			contentLayer.addChild(chinaMap);
			
			
			for each (var item:String in nameArr) 
			{
				provinceArr.push(new Province(chinaMap.getChildByName(item) as Sprite));
			}

			
			addChild(contentLayer);
			addChild(tipLayer);
		}
		/**
		 * tips事件
		 * @param	e
		 */
		private function toolTipsForward(e:Event):void {
			trace("tooltips发送事件!");
		}
		

		
		
		
		
	}
	
}
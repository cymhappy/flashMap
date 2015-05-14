package view 
{
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author cymhappy
	 */
	public class Tipcontent 
	{
		private var _title:String;
		
		private var _content:String;
		
		public function Tipcontent() 
		{
			
		}
		/**
		 * tip标题
		 */
		public function get title():String 
		{
			return _title;
		}
		
		public function set title(value:String):void 
		{
			_title = value;
		}
		/**
		 * tip内容
		 */
		public function get content():String 
		{
			return _content;
		}
		
		public function set content(value:String):void 
		{
			_content = value;
		}
		
	}

}
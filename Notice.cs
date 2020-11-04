using System;
using System.Threading;
using Windows.Data.Xml.Dom;
using Windows.UI.Notifications;


class Notice
{
	public static void Main (string[] args)
	{
		Console.WriteLine("Hello, World!");

		var content = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastText01);
		var text = content.GetElementsByTagName("text")[0];
		text.AppendChild(content.CreateTextNode("てすとめっせーじ"));

		ToastNotificationManager.CreateToastNotifier("Microsoft.Windows.Computer").Show(new ToastNotification(content));

		Thread.Sleep(10000);
	}
}

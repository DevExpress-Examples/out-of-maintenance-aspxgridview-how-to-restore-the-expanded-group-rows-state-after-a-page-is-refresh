using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
	protected void btnSave_Click(object sender, EventArgs e) {
		List<int> states = new List<int>();

		for (Int32 i = 0; i < grid.VisibleRowCount; i++) {
			if (grid.IsGroupRow(i) && grid.IsRowExpanded(i))
				states.Add(i);
		}
		Session["expandedRows"] = states;
	}
	protected void btnLoad_Click(object sender, EventArgs e) {
		List<int> states = Session["expandedRows"] as List<int> ;
		if (states == null)
			return;

		grid.CollapseAll();
		foreach (int index in states)
			grid.ExpandRow(index);
	}
}

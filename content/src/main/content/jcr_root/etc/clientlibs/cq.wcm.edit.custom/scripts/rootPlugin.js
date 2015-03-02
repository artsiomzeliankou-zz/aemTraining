(function($) {
        var plugin = CQ.Ext.extend(CQ.Ext.emptyFn, {
            init: function(widget) {
               widget.treeRoot.name = "content/aemTraining/en";

            }
        });
        CQ.Ext.ComponentMgr.registerPlugin('customRootPathPlugin', plugin);
    }($CQ));
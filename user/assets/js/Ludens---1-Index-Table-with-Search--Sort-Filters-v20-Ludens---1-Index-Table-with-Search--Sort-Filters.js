$(function() {
    
    
	var _zoomLevel = 100;
	var oDiv = document.getElementById("ipi-table");
	$("#zoom_in").click(function(e){
		_zoomLevel += 10;
		if (typeof oDiv.style.MozTransform == "string")
			oDiv.style.MozTransform = "scale(" + (_zoomLevel / 100) + ")";
		else if (typeof oDiv.style.zoom == "string")
			oDiv.style.zoom = _zoomLevel  + "%";
	});

	$("#zoom_out").click(function(e){
		_zoomLevel -= 10;
		if (typeof oDiv.style.MozTransform == "string")
			oDiv.style.MozTransform = "scale(" + (_zoomLevel / 100) + ")";
		else if (typeof oDiv.style.zoom == "string")
			oDiv.style.zoom = _zoomLevel  + "%";
	});
	

	
	$("#ipi-table").tablesorter({
		theme: 'bootstrap',

		
		widthFixed : true,

		
		widgets : [ "filter", "columns", "zebra" ],

		ignoreCase: false,

		widgetOptions : {
            
			
			zebra : ["even", "odd"],

			
			columns: [ "primary", "secondary", "tertiary" ],
			

			
			
			
			filter_childRows : false,

			
			filter_childByColumn : false,

			
			filter_childWithSibs : true,

			
			
			
			filter_columnFilters : true,

			
			filter_columnAnyMatch: true,

			
			filter_cellFilter : '',

			
			
			filter_cssFilter : '', 

			
			
			filter_defaultFilter : {},

			
			filter_excludeFilter : {},

			
			
			filter_external : '',

			
			filter_filteredRow : 'filtered',

			
			
			filter_filterLabel : 'Filter "{{label}}" column by...',

			
			
			filter_formatter : null,

			
			
			filter_functions : null,

			
			filter_hideEmpty : true,

			
			
			
			filter_hideFilters : false,

			
			filter_ignoreCase : true,

			
			
			
			
			filter_liveSearch : true,

			
			filter_matchType : { 'input': 'exact', 'select': 'exact' },

			
			filter_onlyAvail : 'filter-onlyAvail',

			
			filter_placeholder : { search : '', select : '' },

			
			filter_reset : 'button.reset',

			
			filter_resetOnEsc : true,

			
			filter_saveFilters : true,

			
			
			filter_searchDelay : 300,

			
			filter_searchFiltered: true,

			
			filter_selectSource  : null,

			
			
			filter_serversideFiltering : false,

			
			
			filter_startsWith : false,

			
			
			filter_useParsedData : false,

			
			filter_defaultAttrib : 'data-value',

			
			filter_selectSourceSeparator : '|'

		}
	});

	
	$('.resetsaved').click(function() {
		$('#ipi-table').trigger('filterResetSaved');

		
		var $message = $('<span class="results"> Reset</span>').insertAfter(this);
		setTimeout(function() {
			$message.remove();
		}, 500);
		return false;
	});

	
	
	
	$('button[data-filter-column]').click(function() {
		/*** first method *** data-filter-column="1" data-filter-text="!son"
			add search value to Discount column (zero based index) input */
		var filters = [],
			$t = $(this),
			col = $t.data('filter-column'), 
			txt = $t.data('filter-text') || $t.text(); 

		filters[col] = txt;
		
		$.tablesorter.setFilters( $('#table'), filters, true ); 

		/** old method (prior to tablsorter v2.9 ***
		var filters = $('table.tablesorter').find('input.tablesorter-filter');
		filters.val(''); 
		filters.eq(col).val(txt).trigger('search', false);
		******/

		/*** second method ***
			this method bypasses the filter inputs, so the "filter_columnFilters"
			option can be set to false (no column filters showing)
		******/
		/*
		var columns = [];
		columns[5] = '2?%'; 
		$('table').trigger('search', [ columns ]);
		*/

		return false;
	});

	$('table').bind('filterEnd', function(event, filteredRows){
	    var rowCount = document.getElementById('rowCount');
        if (typeof rowCount !== "undefined") {
            var text = document.createTextNode(filteredRows.filteredRows);
            jQuery('#rowCount').html('');
            rowCount.appendChild(text);
        }
    });

});
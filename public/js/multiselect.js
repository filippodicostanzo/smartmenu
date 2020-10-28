$(document).ready(function () {
    $('#items-selected').multiSelect({
        selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",

        sortable: true,
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev(),
                $selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


            var selectedValues = $('#features-selected').val();
            $('#opt-value').val(selectedValues);

            /*$('.ms-selectable .ms-list').find('li').fadeOut();
            $('.ms-selectable .ms-list').find('li').addClass('ms-selected');*/


            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                .on('keydown', function (e) {
                    // $('.ms-selectable .ms-list').find('li.xxx').fadeOut();
                    if (e.which === 40) {
                        that.$selectableUl.focus();
                        return false;
                    }
                }).on('keyup', function (e) {
                    // if ($('.search-input').val()==''){
                    //console.log('remove');
                    //$('.ms-selectable .ms-list li').addClass('AAA');
                    //$('.ms-selectable .ms-list .xxx').css("color", "red");
                    //}
                });

            that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                .on('keydown', function (e) {
                    if (e.which == 40) {
                        that.$selectionUl.focus();
                        return false;
                    }
                });

        },
        afterSelect: function () {
            this.qs1.cache();
            this.qs2.cache();
            var selectedValues = $('#features-selected').val();
            $('#opt-value').val(selectedValues);
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
            var selectedValues = $('#features-selected').val();
            $('#opt-value').val(selectedValues);
        }
    });
});

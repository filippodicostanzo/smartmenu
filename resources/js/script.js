/*REMOVE FILE FROM CAROUSEL IMAGE BACKEND */
$(document).ready(function () {

    $('.cancel').on('click', function () {
        console.log('REMOVE');
        this.closest('li').remove();
        let value = '';

        if ($("#holder > li").length > 0) {

            $("#holder > li").each(function () {

                value += $(this).children("img").attr('src') + ','
            });
            value = value.replace(/,\s*$/, "");
            $('#images').val(value);
        } else {
            $('#images').val('');
        }
    })


    if ($('#item_category').length > 0) {
        $.ajax({
            type: "GET",
            url: '/admin/getitemcategory/' + $('#item_category').val(), // This is what I have updated
            //data: { id: this.value },
            success: function (data) {

                //$('#example').html(data);
                //$.getScript('../../js/app.js');
                var obj = JSON.parse(data);

                var fields = obj.fields.split(",");

                console.log(fields);

                if (fields.length>0) {

                    for(var i = 0; i < fields.length;i++) {
                        $('.'+fields[i]).fadeIn();
                    }
                }

                if (obj.id === 'firstcourse' || obj.id === 'maincourse' || obj.id === 'appetizer' || obj.id === 'pizza' || obj.id === 'sidedish' || obj.id === 'dessert' || obj.id === 'fry'|| obj.id === 'sandwich' || obj.id ==='special') {

                    $('.card-body').find('.wine , .drink').each(function () {
                        $(this).fadeOut();
                    })

                    $('.card-body').find('.all , .dish').each(function () {
                        $(this).css("display", "flex").hide().fadeIn();
                    })

                } else if (obj.id === 'wine') {
                    $('.card-body').find('.dish , .drink').each(function () {
                        $(this).fadeOut();
                    })

                    $('.card-body').find('.all , .wine').each(function () {
                        $(this).css("display", "flex").hide().fadeIn();
                    })
                } else if (obj.id === 'drink' || obj.id === 'softdrink' || obj.id === 'bitter' || obj.id==='coffeebar') {
                    $('.card-body').find('.wine , .dish').each(function () {
                        $(this).fadeOut();
                    })

                    $('.card-body').find('.all , .drink').each(function () {
                        $(this).css("display", "flex").hide().fadeIn();
                    })
                }
                else if (obj.id==='icecream') {
                    $('.card-body').find('.wine').each(function () {
                        $(this).fadeOut();
                    })

                    $('.card-body').find('.all , .drink, .dish').each(function () {
                        $(this).css("display", "flex").hide().fadeIn();
                    })
                }
            }
        })
    }

    $('#item_category').on('change', function () {
        $.ajax({
            type: "GET",
            url: '/admin/getitemcategory/' + this.value, // This is what I have updated
            //data: { id: this.value },
            success: function (data) {

                //$('#example').html(data);
                //$.getScript('../../js/app.js');
                var obj = JSON.parse(data);

                var fields = obj.fields.split(",");

                $('.optional').each(function () {
                    $(this).fadeOut();
                })

                if (fields.length>0) {
                    for(var i = 0; i < fields.length;i++) {
                        $('.'+fields[i]).fadeIn();
                    }
                }
            }
        })
    });


    $('#allergens-selected').multiSelect({
        selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        keepOrder: true,
        sortable: true,
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev(),
                $selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


            var selectedValues = $('#allergens-selected').val();
            $('#opt-value').val(selectedValues);

            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                .on('keydown', function (e) {
                    if (e.which === 40) {
                        that.$selectableUl.focus();
                        return false;
                    }
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
            var selectedValues = $('#allergens-selected').val();
            $('#opt-value').val(selectedValues);
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
            var selectedValues = $('#allergens-selected').val();
            $('#opt-value').val(selectedValues);
        }
    });


    $('#ingredients-selected').multiSelect({
        selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        keepOrder: true,
        sortable: true,
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev(),
                $selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


            var selectedValues = $('#ingredients-selected').val();
            $('#opt-value').val(selectedValues);

            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                .on('keydown', function (e) {
                    if (e.which === 40) {
                        that.$selectableUl.focus();
                        return false;
                    }
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
            var selectedValues = $('#ingredients-selected').val();
            $('#opt-value').val(selectedValues);
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
            var selectedValues = $('#ingredients-selected').val();
            $('#opt-value').val(selectedValues);
        }
    });


    $('#features-selected').multiSelect({
        selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        keepOrder: true,
        sortable: true,
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev(),
                $selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


            var selectedValues = $('#features-selected').val();
            $('#opt-value').val(selectedValues);

            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                .on('keydown', function (e) {
                    if (e.which === 40) {
                        that.$selectableUl.focus();
                        return false;
                    }
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


    $('#items-selected').multiSelect({
        selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        keepOrder: true,
        sortable: true,
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev(),
                $selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


            var selectedValues = $('#items-selected').val();
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
            var selectedValues = $('#items-selected').val();
            $('#opt-value').val(selectedValues);
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
            var selectedValues = $('#items-selected').val();
            $('#opt-value').val(selectedValues);
        }
    });


    $('#bt-on').on('click', function () {
        $('.ms-selectable .ms-list').find('li').fadeIn();
        $('.ms-selectable .ms-list').find('li').removeClass('xxx');
    })

    $('#bt-off').on('click', function () {
        $('.ms-selectable .ms-list').find('li').fadeOut();
        $('.ms-selectable .ms-list').find('li').addClass('xxx');
    })


    $('.items-category input').each(function () {
        $(this).on('click', function (e) {
            var id = e.target.id;
            if ($(this).is(":checked")) {
                $('.ms-selectable .ms-list li').each(function () {
                    if ($(this).attr('data-type') == id) {
                        $(this).removeClass('hide');
                    }
                    ;
                });

            } else {
                console.log('AAA');
                $('.ms-selectable .ms-list li').each(function () {
                    if ($(this).attr('data-type') == id) {
                        console.log('AA');
                        $(this).addClass('hide');
                    }
                    ;
                });
            }
        });

    })

    $('#structure-id').on('change', function (e) {
        e.preventDefault();
        $.ajax({
            type: "GET",
            url: '/admin/getitemstructure/' + this.value, // This is what I have updated
            //data: { id: this.value },
            success: function (data) {

                var obj = JSON.parse(data);

                var output = '';

                console.log(obj);
                output += '<select id="items-selected" multiple="multiple" name="items[]">';

                if ($('#items-checked').length > 0) {

                    var selected = $('#items-checked').val();
                    var array = selected.split(",");

                    for (let key in obj) {
                        if (array.includes(obj[key].id_code.toString())) {
                            output += '<option value="' + obj[key].id_code + '" data-type="' + obj[key].category_id + '" selected>' + obj[key].name_it + '</option>';
                        } else {
                            output += '<option value="' + obj[key].id_code + '" data-type="' + obj[key].category_id + '">' + obj[key].name_it + '</option>';
                        }
                    }


                } else {

                    for (let key in obj) {
                        output += '<option value="' + obj[key].id_code + '" data-type="' + obj[key].category_id + '">' + obj[key].name_it + '</option>';
                    }
                }

                output += '</select>';
                //output = '<select id="items-selected" multiple="multiple" name="items[]"><option value="1" data-type="1" data-id="1" selected>Ciao</option></select>';
                $('.items-container').html(output);
                $(document).ajaxComplete(function () {
                    item_reload();
                })
                //$.getScript('../../js/multiselect.js');
            }
        });

    })


    if ($('#items-checked').length > 0) {

        $.ajax({
            type: "GET",
            url: '/admin/getitemstructure/' + $('#structure-id').val(), // This is what I have updated
            //data: { id: this.value },
            success: function (data) {


                var obj = JSON.parse(data);

                var selected = $('#items-checked').val();

                var output = '';


                console.log(obj);

                console.log($('#items-checked').val());

                var array = selected.split(",");


                console.log('CREO LISTA');

                var arrayresults = [];

                for (var j = 0; j < array.length; j++) {
                    for (var i = 0; i < obj.length; i++) {
                        if (obj[i].id_code == array[j]) {
                            obj[i].selected = true;
                            arrayresults.push(obj[i]);
                        }
                    }
                }
                /*console.log(arrayresults);



                console.log(arrayresults.concat(obj));*/

                var ids = new Set(arrayresults.map(d => d.id_code));
                var merged = [...arrayresults, ...obj.filter(d => !ids.has(d.id_code))];


                output += '<select id="items-selected" multiple="multiple" name="items[]">';
                for (let key in merged) {
                    if (merged[key].selected) {
                        output += '<option value="' + merged[key].id_code + '" data-type="' + merged[key].category_id + '" selected>' + merged[key].name_it + '</option>';
                    } else {

                       output += '<option value="' + merged[key].id_code + '" data-type="' + merged[key].category_id + '">' + merged[key].name_it + '</option>';
                    }
                }

                output += '</select>';


                //output = '<select id="items-selected" multiple="multiple" name="items[]"><option value="1" data-type="1" data-id="1" selected>Ciao</option></select>';
                $('.items-container').html(output);
                $(document).ajaxComplete(function () {
                    item_reload();
                })
                //$.getScript('../../js/multiselect.js');
            }
        });
    }

    function item_reload() {
        $('#items-selected').multiSelect({
            selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
            selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
            keepOrder: true,
            sortable: true,
            afterInit: function (ms) {
                var that = this,
                    $selectableSearch = that.$selectableUl.prev(),
                    $selectionSearch = that.$selectionUl.prev(),
                    selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                    selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


                var selectedValues = $('#items-selected').val();
                $('#opt-value').val(selectedValues);

                console.log('AAAAAAAA');
                console.log(selectedValues);

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
                var selectedValues = $('#items-selected').val();
                $('#opt-value').val(selectedValues);
            },
            afterDeselect: function () {
                this.qs1.cache();
                this.qs2.cache();
                var selectedValues = $('#items-selected').val();
                $('#opt-value').val(selectedValues);
            }
        });
    }


    /*****
     *
     *
     * ITEM CREATION WITH STRUCTURE SELECTED
     *
     *
     */
    /*
        $('#structure-id-items').on('change', function (e) {
            e.preventDefault();
            $.ajax({
                type: "GET",
                url: '/admin/getingredients/', // This is what I have updated
                //data: { id: this.value },
                success: function (data) {

                    var obj = JSON.parse(data);
                    console.log(obj);
                }
            });
        });*/


    /*****
     *
     *
     * FILTER BY STRUCTURES
     *
     *
     */


    APP_URL = window.location.protocol + '//' + window.location.hostname

    window.filter = function (item, section) {
        window.location.href = APP_URL + '/admin/' + section+'?structure=' + item;
    }


    $( "#datepicker-start" ).datepicker({
        format: 'dd/mm/yyyy',
    });

    $( "#datepicker-end" ).datepicker({
        format: 'dd/mm/yyyy',
    });


    /***
     *
     *
     *
     * SELECT MENU FROM QR CODE
     *
     *
     *
     */


    $('#menus-selected').multiSelect({
        selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
        keepOrder: true,
        sortable: true,
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev(),
                $selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


            var selectedValues = $('#menus-selected').val();
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
            var selectedValues = $('#menus-selected').val();
            $('#opt-value').val(selectedValues);
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
            var selectedValues = $('#menus-selected').val();
            $('#opt-value').val(selectedValues);
        }
    });


    if ($('#menus-checked').length > 0) {

        $.ajax({
            type: "GET",
            url: '/admin/getmenustructure/' + $('#structure-id-menu').val(), // This is what I have updated
            //data: { id: this.value },
            success: function (data) {


                var obj = JSON.parse(data);

                var selected = $('#menus-checked').val();

                var output = '';


                console.log(obj);
                console.log($('#menus-checked').val());

                var array = selected.split(",");
                console.log(array);


                var arrayresults = [];

                for (var j = 0; j < array.length; j++) {
                    for (var i = 0; i < obj.length; i++) {
                        if (obj[i].id_code == array[j]) {
                            obj[i].selected = true;
                            arrayresults.push(obj[i]);
                        }
                    }
                }

                var ids = new Set(arrayresults.map(d => d.id_code));
                var merged = [...arrayresults, ...obj.filter(d => !ids.has(d.id_code))];


                output += '<select id="menus-selected" multiple="multiple" name="menus[]">';
                for (let key in merged) {
                    if (merged[key].selected) {
                        output += '<option value="' + merged[key].id_code + '" data-type="' + merged[key].category_id + '" selected>' + merged[key].name_it + '</option>';
                    } else {

                        output += '<option value="' + merged[key].id_code + '" data-type="' + merged[key].category_id + '">' + merged[key].name_it + '</option>';
                    }
                }

                output += '</select>';
                //output = '<select id="items-selected" multiple="multiple" name="items[]"><option value="1" data-type="1" data-id="1" selected>Ciao</option></select>';
                $('.menus-container').html(output);
                $(document).ajaxComplete(function () {
                    menureload();
                })
                //$.getScript('../../js/multiselect.js');
            }
        });
    }

    $('#structure-id-menu').on('change', function (e) {
        e.preventDefault();
        $.ajax({
            type: "GET",
            url: '/admin/getmenustructure/' + this.value, // This is what I have updated
            //data: { id: this.value },
            success: function (data) {

                var obj = JSON.parse(data);

                var output = '';

                console.log(obj);
                output += '<select id="menus-selected" multiple="multiple" name="menus[]">';

                if ($('#menus-checked').length > 0) {

                    var selected = $('#menus-checked').val();
                    var array = selected.split(",");

                    for (let key in obj) {
                        if (array.includes(obj[key].id_code.toString())) {
                            output += '<option value="' + obj[key].id_code + '" selected>' + obj[key].name_it + '</option>';
                        } else {
                            output += '<option value="' + obj[key].id_code + '">' + obj[key].name_it + '</option>';
                        }
                    }


                } else {

                    for (let key in obj) {
                        output += '<option value="' + obj[key].id_code + '">' + obj[key].name_it + '</option>';
                    }
                }

                output += '</select>';
                //output = '<select id="items-selected" multiple="multiple" name="items[]"><option value="1" data-type="1" data-id="1" selected>Ciao</option></select>';
                $('.menus-container').html(output);
                $(document).ajaxComplete(function () {
                    menureload();
                })
                //$.getScript('../../js/multiselect.js');
            }
        });

    })

    function menureload() {
        $('#menus-selected').multiSelect({
            selectableHeader: "<h6>Selectable Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
            selectionHeader: "<h6>Selected Items</h6><input type='text' class='search-input' autocomplete='off' placeholder='Search Item'>",
            keepOrder: true,
            sortable: true,
            afterInit: function (ms) {
                var that = this,
                    $selectableSearch = that.$selectableUl.prev(),
                    $selectionSearch = that.$selectionUl.prev(),
                    selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                    selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';


                var selectedValues = $('#menus-selected').val();
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
                var selectedValues = $('#menus-selected').val();
                $('#opt-value').val(selectedValues);
            },
            afterDeselect: function () {
                this.qs1.cache();
                this.qs2.cache();
                var selectedValues = $('#menus-selected').val();
                $('#opt-value').val(selectedValues);
            }
        });
    }


    /***
     *
     *
     *
     * CHECKED MULTIPLE VISIBLE FIELDS
     *
     *
     *
     */


    var fields = $('#fields_selected').val();

    if (fields!=undefined) {
        var array_fields = fields.split(",")

        for(var i = 0; i < array_fields.length;i++) {
            $(':checkbox[value="'+array_fields[i]+'"]').prop('checked', true);
        }

    }



    /***
     *
     *
     *
     * REMOVE SPACE AND LOWERCASE
     *
     *
     *
     */

    $('#id').on('keyup', function (){
        $(this).val(this.value.toLowerCase().replace(/\s/g, ''));
    })


    /***
     *
     *
     *
     * REBUILD PAGINATE
     *
     *
     *
     */



});

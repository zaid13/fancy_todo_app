


import 'package:fancy_todo_app/model/task_model.dart';
import 'package:fancy_todo_app/services/db_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../components/button_tile.dart';
import '../../components/custom_text_styles.dart';
import '../../util/colors.dart';
import '../main_page/componenets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {


final _formKey = GlobalKey<FormBuilderState>();

bool _genderHasError = false;
var genderOptions = ['Apple',"nokia","samsung","sony"];
bool _ageHasError = false;



void _onChanged(dynamic val) => debugPrint(val.toString());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.backgroundColor,
        body:  Container(

          padding: EdgeInsets.all(10),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(),
                    GestureDetector(

                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close,color: Colors.white,size: 45,)),



                  ],),

                CustomText("ADD TASK", 50),
                Container(),
                Container(),

                SizedBox(
                  height: MediaQuery.of(context).size.height*0.7,
                  child:FormBuilder(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    initialValue:  {
                      'id': "32",
                      'type':"nokia",
                      "time":DateTime.now()
                    },
                    skipDisabled: true,
                    child: ListView(
                        children: <Widget>[
                    const SizedBox(height: 15),

                         Container(
                           height: 70,
                           decoration: BoxDecoration(
                               border: Border.all(
                                 color: CustomColors.goalsTileColor,
                               ),
                               borderRadius: BorderRadius.all(Radius.circular(20))
                           ),
                           padding: EdgeInsets.only(left: 10),
                           child: FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.always,
                      name: 'title',

                             style: TextStyle(color: Colors.white),

                             decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: TextStyle(color: Colors.white),
                               border: InputBorder.none,


                      ),
                      onChanged: (val) {
                        setState(() {
                            _ageHasError = !(_formKey.currentState?.fields['title']
                                ?.validate() ??
                                false);
                        });
                      },
                      // valueTransformer: (text) => num.tryParse(text),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        // FormBuilderValidators.numeric(),
                        // FormBuilderValidators.max(70),
                      ]),
                      // initialValue: '12',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                         ),
                          Container(height: 50,),
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: CustomColors.goalsTileColor,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: FormBuilderTextField(
                              autovalidateMode: AutovalidateMode.always,
                              name: 'description',
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,

                                labelStyle: TextStyle(color: Colors.white),
                                labelText: 'Description',

                              ),
                              onChanged: (val) {
                                setState(() {
                                  _ageHasError = !(_formKey.currentState?.fields['description']
                                      ?.validate() ??
                                      false);
                                });
                              },
                              // valueTransformer: (text) => num.tryParse(text),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                // FormBuilderValidators.numeric(),
                                // FormBuilderValidators.max(70),
                              ]),
                              // initialValue: '12',
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.newline,
                            ),
                          ),
                          Container(height: 50,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: CustomColors.goalsTileColor,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: FormBuilderDropdown<String>(
                              // autovalidate: true,
                              name: 'type',
                              style:  TextStyle(color: Colors.white),

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Type',
                                iconColor: Colors.white,
                                labelStyle: TextStyle(color: Colors.white),
                                hintText: 'Select Type',


                              ),
                              validator: FormBuilderValidators.compose(
                                  [FormBuilderValidators.required()]),
                              items: genderOptions
                                  .map((gender) => DropdownMenuItem(

                                alignment: AlignmentDirectional.center,

                                value: gender,
                                child: Container(
                                    color: CustomColors.backgroundColor,
                                    child: Text(gender,style: TextStyle(color: Colors.white),)),
                              ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  _genderHasError = !(_formKey
                                      .currentState?.fields['type']
                                      ?.validate() ??
                                      false);
                                });
                              },
                              valueTransformer: (val) => val?.toString(),
                            ),
                          ),
                          Container(height: 50,),

                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: CustomColors.goalsTileColor,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: FormBuilderDateTimePicker(
                              name: 'time',
                              initialEntryMode: DatePickerEntryMode.calendar,
                              initialValue: DateTime.now(),
                              style: TextStyle(color: Colors.white),
                              inputType: InputType.both,
                              decoration: InputDecoration(
                                border: InputBorder.none,

                                labelText: 'Appointment Time',
                                labelStyle: TextStyle(color: Colors.white),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.close,color: Colors.white,),
                                  onPressed: () {
                                    _formKey.currentState!.fields['times']
                                        ?.didChange(null);
                                  },
                                ),
                              ),
                              initialTime: const TimeOfDay(hour: 8, minute: 0),
                              // locale: const Locale.fromSubtags(languageCode: 'fr'),
                            ),
                          ),


]),
                    onChanged: () {
                      _formKey.currentState!.save();
                      debugPrint(_formKey.currentState!.value.toString());
                    },
                  )

                  ) ,


                (_formKey.currentState?.fields['description']
                    ?.validate() ??
                    false) &&  (_formKey.currentState?.fields['title']
                    ?.validate() ??
                    false)?
                GestureDetector(
                    onTap: () async {
                      Map<String ,dynamic> mp = {"id":DateTime.now().microsecond.toString()};
                      mp.addAll(_formKey.currentState!.value);
                      await db_service.Savetask(TaskModel.fromJson(mp),context);


                 Navigator.pop(context);


                    },
                    child: ButtonTile("ADD")):Container()


              ],
            ),
          ),
        ),
      ),
    );
  }
}
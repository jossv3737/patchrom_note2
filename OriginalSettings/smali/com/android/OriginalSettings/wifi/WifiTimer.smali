.class public Lcom/android/OriginalSettings/wifi/WifiTimer;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiTimer.java"


# instance fields
.field endTime_tv:Landroid/widget/TextView;

.field lastSetEndTime:Ljava/lang/String;

.field lastSetStartTime:Ljava/lang/String;

.field private mCancelMenuItem:Landroid/view/MenuItem;

.field mContext:Landroid/content/Context;

.field private mDoneMenuItem:Landroid/view/MenuItem;

.field private mEndTimeCheckBox:Landroid/widget/CheckBox;

.field mEndTimePickerView:Landroid/widget/TimePicker;

.field private mIsTablet:Z

.field mMenuRevertIcon:Landroid/view/View;

.field mMenuRevertText:Landroid/view/View;

.field mMenuSaveIcon:Landroid/view/View;

.field mMenuSaveText:Landroid/view/View;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mStartTimeCheckBox:Landroid/widget/CheckBox;

.field mStartTimePickerView:Landroid/widget/TimePicker;

.field startTime_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->saveChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiTimer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiTimer;->showDialog(I)V

    return-void
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 328
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getHour(Ljava/lang/String;)I
    .locals 2
    .parameter "time"

    .prologue
    .line 362
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, pieces:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getMinute(Ljava/lang/String;)I
    .locals 2
    .parameter "time"

    .prologue
    .line 368
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, pieces:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "time"

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v2

    .line 334
    .local v2, hour:I
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v3

    .line 336
    .local v3, min:I
    invoke-static {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->get24HourMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    const-string v5, "%2d:%02d "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 339
    :cond_0
    rem-int/lit8 v1, v2, 0xc

    .line 340
    .local v1, ampmHour:I
    if-nez v1, :cond_1

    .line 341
    const/16 v1, 0xc

    .line 343
    :cond_1
    const-string v5, "%2d:%02d "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, ampm:I
    div-int/lit8 v5, v2, 0xc

    if-nez v5, :cond_2

    .line 347
    const v0, 0x7f090d7c

    .line 351
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 349
    :cond_2
    const v0, 0x7f090d7d

    goto :goto_1
.end method

.method private hideKeypad()V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 302
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 305
    :cond_0
    return-void
.end method

.method private pickerSetTime(Landroid/widget/TimePicker;Ljava/lang/String;)V
    .locals 1
    .parameter "timePicker"
    .parameter "time"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 357
    invoke-static {p2}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 358
    invoke-static {p2}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 359
    return-void
.end method

.method private saveChanges()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 219
    const-string v7, "WifiTimer"

    const-string v8, "Save"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->hideKeypad()V

    .line 221
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->clearFocus()V

    .line 222
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->clearFocus()V

    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, isSchduleChange:Z
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 226
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v8}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v8}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, newStartTime:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v8}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v8}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, newEndTime:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 270
    :goto_0
    return v5

    .line 235
    :cond_0
    const-string v7, "wifitimer_start_time_checked"

    if-nez v7, :cond_1

    .line 236
    const-string v7, "wifitimer_start_time_checked"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    :cond_1
    const-string v7, "wifitimer_end_time_checked"

    if-nez v7, :cond_2

    .line 238
    const-string v7, "wifitimer_end_time_checked"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    :cond_2
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "wifitimer_start_time_checked"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "wifitimer_end_time_checked"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eq v7, v8, :cond_4

    .line 242
    :cond_3
    const-string v7, "wifitimer_start_time_checked"

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v7, "wifitimer_end_time_checked"

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    const/4 v2, 0x1

    .line 247
    :cond_4
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 248
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newStartTime    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    .line 250
    const-string v7, "wifitimer_start_time"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const/4 v2, 0x1

    .line 252
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->startTime_tv:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_5
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 255
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newEndTime    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    .line 257
    const-string v7, "wifitimer_end_time"

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const/4 v2, 0x1

    .line 259
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->endTime_tv:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_6
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v10, "wifitimer_enabled"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_enabled"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x1389

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 266
    const-string v7, "WifiTimer"

    const-string v8, "Broadcast Sent"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0           #alarm_intent:Landroid/content/Intent;
    :cond_7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    const v8, 0x7f09026e

    invoke-static {v7, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 270
    goto/16 :goto_0
.end method

.method private setActionBar()V
    .locals 11

    .prologue
    const v10, 0x7f0b0033

    const/16 v9, 0x18

    const/4 v8, -0x2

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 164
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 165
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 167
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04010d

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, customActionBarView:Landroid/view/View;
    const v6, 0x7f0b0351

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 169
    .local v5, saveMenuItem:Landroid/view/View;
    new-instance v6, Lcom/android/OriginalSettings/wifi/WifiTimer$3;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/wifi/WifiTimer$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveIcon:Landroid/view/View;

    .line 180
    const v6, 0x7f0b0352

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveText:Landroid/view/View;

    .line 182
    const v6, 0x7f0b034f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 183
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/android/OriginalSettings/wifi/WifiTimer$4;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/wifi/WifiTimer$4;-><init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertIcon:Landroid/view/View;

    .line 191
    const v6, 0x7f0b0350

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertText:Landroid/view/View;

    .line 193
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 196
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    const-string v1, ""

    .line 201
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v6, "ar"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "he"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "iw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    :cond_0
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x13

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/wifi/WifiTimer;->updateActionBar(Z)V

    .line 216
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    .end local v5           #saveMenuItem:Landroid/view/View;
    :cond_1
    return-void

    .line 207
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v2       #customActionBarView:Landroid/view/View;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    .restart local v5       #saveMenuItem:Landroid/view/View;
    :cond_2
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 212
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateActionBar(Z)V
    .locals 3
    .parameter "isLandscape"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 308
    if-eqz p1, :cond_4

    .line 309
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertText:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 317
    if-eqz p1, :cond_5

    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveText:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_3
    return-void

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuRevertIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mMenuSaveIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 105
    const-string v1, "WifiTimer"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    .line 107
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mIsTablet:Z

    .line 108
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiTimer;->setHasOptionsMenu(Z)V

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    const-string v2, "wifitimer_pref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    .line 114
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimeCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "wifitimer_start_time_checked"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "wifitimer_end_time_checked"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "wifitimer_start_time"

    const-string v3, "19:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "wifitimer_end_time"

    const-string v3, "21:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 120
    .local v0, cal:Ljava/util/Calendar;
    const-string v1, "kk:mm"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    .line 121
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 122
    const-string v1, "kk:mm"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    .line 124
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->startTime_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->endTime_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiTimer;->pickerSetTime(Landroid/widget/TimePicker;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiTimer;->pickerSetTime(Landroid/widget/TimePicker;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    return-void

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->setActionBar()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 296
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->updateActionBar(Z)V

    .line 297
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 275
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_0

    .line 276
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902be

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905bf

    new-instance v3, Lcom/android/OriginalSettings/wifi/WifiTimer$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/WifiTimer$5;-><init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090320

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 133
    const/4 v0, 0x1

    const v1, 0x7f0902bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mCancelMenuItem:Landroid/view/MenuItem;

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mCancelMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mCancelMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    const/4 v0, 0x2

    const v1, 0x7f0902bc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mDoneMenuItem:Landroid/view/MenuItem;

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mDoneMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mDoneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    const v1, 0x7f040118

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, mView:Landroid/view/View;
    const v1, 0x7f0b0380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimeCheckBox:Landroid/widget/CheckBox;

    .line 84
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimeCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiTimer$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiTimer$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0b0383

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;

    .line 90
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiTimer$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiTimer$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0b0381

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->startTime_tv:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f0b0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->endTime_tv:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0b0382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    .line 98
    const v1, 0x7f0b0385

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    .line 100
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "wifitimer_start_time"

    const-string v3, "19:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "wifitimer_end_time"

    const-string v3, "21:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiTimer;->pickerSetTime(Landroid/widget/TimePicker;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiTimer;->pickerSetTime(Landroid/widget/TimePicker;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->saveChanges()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const/16 v1, 0x12d

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiTimer;->showDialog(I)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

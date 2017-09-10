.class public abstract Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;
.super Landroid/app/Activity;
.source "UsbAccessoryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getBaseActivity()Ljava/lang/Class;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 51
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "found":Z
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "am":Landroid/app/ActivityManager;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_3

    .line 59
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 61
    .local v1, "at":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v7

    .line 62
    .local v7, "ti":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->getTaskId()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 64
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->moveToFront()V

    .line 65
    const/4 v3, 0x1

    .line 86
    .end local v1    # "at":Landroid/app/ActivityManager$AppTask;
    .end local v7    # "ti":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    .line 89
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.parrot.arsdk.USB_ACCESSORY_ATTACHED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v2}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    .end local v3    # "found":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->finish()V

    .line 101
    return-void

    .line 73
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "found":Z
    :cond_3
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    .local v6, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 76
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 78
    iget v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 79
    const/4 v3, 0x1

    .line 80
    goto :goto_0

    .line 95
    .end local v6    # "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->getBaseActivity()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v4, "i":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v4}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

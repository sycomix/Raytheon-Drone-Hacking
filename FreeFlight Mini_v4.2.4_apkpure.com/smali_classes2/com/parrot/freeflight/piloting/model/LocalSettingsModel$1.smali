.class Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;
.super Ljava/lang/Object;
.source "LocalSettingsModel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "needUpdate":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->access$000(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->access$000(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 89
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->notifyListener()V

    .line 90
    :cond_1
    return-void

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->access$100(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->access$100(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

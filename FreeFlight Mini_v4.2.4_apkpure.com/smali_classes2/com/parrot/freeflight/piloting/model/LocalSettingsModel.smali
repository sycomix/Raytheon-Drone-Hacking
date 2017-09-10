.class public Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
.super Lcom/parrot/freeflight/core/model/Model;
.source "LocalSettingsModel.java"


# instance fields
.field private final mAppVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/Model;-><init>()V

    .line 80
    new-instance v2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;-><init>(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 26
    const-string v0, "Unknown"

    .line 28
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mAppVersion:Ljava/lang/String;

    .line 33
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-direct {v2, p1, p2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 34
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->update()V

    .line 36
    return-void

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/FlightDuration;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    return-object v0
.end method

.method private update()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->update()V

    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->notifyListener()V

    .line 97
    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getFlightDuration()Lcom/parrot/freeflight/piloting/preference/FlightDuration;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    return-object v0
.end method

.method public getJoystickState()Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFlightDuration:Lcom/parrot/freeflight/piloting/preference/FlightDuration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->reset()V

    .line 78
    return-void
.end method

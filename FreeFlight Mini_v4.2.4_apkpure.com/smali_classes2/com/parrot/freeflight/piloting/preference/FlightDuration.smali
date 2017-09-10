.class public Lcom/parrot/freeflight/piloting/preference/FlightDuration;
.super Ljava/lang/Object;
.source "FlightDuration.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# static fields
.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "delos_flight_duration_pref"

.field private static final TAKEOFF_TIME_KEY:Ljava/lang/String; = "TAKEOFF_TIME_KEY"


# instance fields
.field private final mFlightDurationPref:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTakeOffTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mTakeOffTime:J

    .line 19
    const-string v0, "delos_flight_duration_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mFlightDurationPref:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mFlightDurationPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTakeOffTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mTakeOffTime:J

    return-wide v0
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    const-string v0, "TAKEOFF_TIME_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->update()V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTakeOffTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mFlightDurationPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TAKEOFF_TIME_KEY"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mTakeOffTime:J

    .line 32
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mFlightDurationPref:Landroid/content/SharedPreferences;

    const-string v1, "TAKEOFF_TIME_KEY"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/preference/FlightDuration;->mTakeOffTime:J

    .line 40
    return-void
.end method

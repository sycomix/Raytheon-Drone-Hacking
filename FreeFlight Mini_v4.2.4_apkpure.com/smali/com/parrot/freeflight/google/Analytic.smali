.class public Lcom/parrot/freeflight/google/Analytic;
.super Ljava/lang/Object;
.source "Analytic.java"


# static fields
.field private static final GA_DISPATCH_PERIOD:I = 0x1e

.field private static final GA_IS_DRY_RUN:Z

.field private static mInstance:Lcom/parrot/freeflight/google/Analytic;


# instance fields
.field private mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/parrot/freeflight/google/Analytic;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/parrot/freeflight/google/Analytic;

    invoke-direct {v0}, Lcom/parrot/freeflight/google/Analytic;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    .line 45
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    return-object v0
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v1, "versionName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 149
    .end local v1    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "undetected"

    .restart local v1    # "versionName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configResId"    # I

    .prologue
    .line 24
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/parrot/freeflight/google/Analytic;

    invoke-direct {v0}, Lcom/parrot/freeflight/google/Analytic;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    .line 26
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 27
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    iget-object v0, v0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 28
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    iget-object v0, v0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 30
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    sget-object v1, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    iget-object v1, v1, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 31
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    iget-object v0, v0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "ga_appVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/parrot/freeflight/google/Analytic;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/parrot/freeflight/google/Analytic;->mInstance:Lcom/parrot/freeflight/google/Analytic;

    iget-object v0, v0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getmTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method public reportActivityStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reportActivityStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 84
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    .line 95
    if-eqz p3, :cond_1

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 106
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    int-to-long v4, p4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendTimingToAnalytic(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "variable"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendTimingToAnalytic(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "variable"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 125
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppOptOut(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mGa:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public trackDrone()V
    .locals 3

    .prologue
    .line 296
    const-string v0, "drone"

    const-string v1, "main-buy a drone"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public trackMainConnecntedDroneNoNull()V
    .locals 3

    .prologue
    .line 309
    const-string v0, "Freeflight"

    const-string v1, "main-connected to a drone-no hull"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public trackMainConnecntedDroneNull()V
    .locals 3

    .prologue
    .line 313
    const-string v0, "Freeflight"

    const-string v1, "main-connected to a drone-hull"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public trackMainConnectToDroneCancelled()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "Connect to drone"

    const-string v1, "main-connect to drone-cancelled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public trackMainConnectToDroneFail()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "Connect to drone"

    const-string v1, "main-connect to drone-fail"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public trackMainConnectToDroneOk()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "Connect to drone"

    const-string v1, "main-connect to drone-ok"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public trackMainConnectToDronePassed()V
    .locals 3

    .prologue
    .line 262
    const-string v0, "Connect to drone"

    const-string v1, "main-connect to drone-passed"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public trackMainConnectedDroneFigure1()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "Figures"

    const-string v1, "main-connected to a drone-figure1"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public trackMainConnectedDroneFigure2()V
    .locals 3

    .prologue
    .line 360
    const-string v0, "Figures"

    const-string v1, "main-connected to a drone-figure2"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public trackMainConnectedDroneFigure3()V
    .locals 3

    .prologue
    .line 364
    const-string v0, "Figures"

    const-string v1, "main-connected to a drone-figure3"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public trackMainConnectedDroneFigure4()V
    .locals 3

    .prologue
    .line 368
    const-string v0, "Figures"

    const-string v1, "main-connected to a drone-figure4"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public trackMainConnectedDroneFigure5()V
    .locals 3

    .prologue
    .line 372
    const-string v0, "Figures"

    const-string v1, "main-connected to a drone-figure5"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public trackMainConnectedDroneSettingsAce()V
    .locals 3

    .prologue
    .line 327
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-ace"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public trackMainConnectedDroneSettingsAutoRecord()V
    .locals 3

    .prologue
    .line 347
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-auto record"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public trackMainConnectedDroneSettingsCamera()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-camera"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public trackMainConnectedDroneSettingsJoypadDefault()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-joypad (default)"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public trackMainConnectedDroneSettingsNormal()V
    .locals 3

    .prologue
    .line 331
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-normal"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public trackMainConnectedDroneSettingsReset()V
    .locals 3

    .prologue
    .line 339
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-reset"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public trackMainConnectedDroneSettingsSwitch()V
    .locals 3

    .prologue
    .line 335
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-settings-switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public trackMainConnectedDroneThrowIt()V
    .locals 3

    .prologue
    .line 351
    const-string v0, "Settings"

    const-string v1, "main-connected to a drone-throw it"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public trackMainConnedDroneCamera()V
    .locals 3

    .prologue
    .line 376
    const-string v0, "Figures"

    const-string v1, "main-connected to a drone-camera"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public trackMainFlypadBack()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "Flypad"

    const-string v1, "main-flypad-back"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public trackMainFlypadOk()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "Flypad"

    const-string v1, "main-flypad-ok"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public trackMainFreeFlightNeverConnected()V
    .locals 3

    .prologue
    .line 305
    const-string v0, "Freeflight"

    const-string v1, "main-free flight-never connected"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public trackMainMyFlights()V
    .locals 3

    .prologue
    .line 206
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public trackMainMyFlightsConncetedOk()V
    .locals 3

    .prologue
    .line 210
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightGraph()V
    .locals 3

    .prologue
    .line 238
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-graph"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightGraphShareFacebook()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-graph-share-Facebook"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightGraphShareGooglePhoto()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-graph-share-google photo"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightGraphShareTweeter()V
    .locals 3

    .prologue
    .line 250
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-graph-share-Tweeter"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightMedia()V
    .locals 3

    .prologue
    .line 254
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-media"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightPrivate()V
    .locals 3

    .prologue
    .line 230
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight+private"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightPublic()V
    .locals 3

    .prologue
    .line 226
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-public"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public trackMainMyFlightsConncetedOkFlightSendFlight()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-flight-send flight"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public trackMainMyFlightsConncetedOkProfilDeconnection()V
    .locals 3

    .prologue
    .line 218
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-profil-deconnection"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public trackMainMyFlightsConncetedOkProfilEdition()V
    .locals 3

    .prologue
    .line 214
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-profil-edition"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public trackMainMyFlightsConncetedOkProfilMyInfos()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "Parrot cloud"

    const-string v1, "main-my flights-connected-ok-profil-my infos"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public trackMenuAbout()V
    .locals 3

    .prologue
    .line 193
    const-string v0, "Menu"

    const-string v1, "menu-about"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public trackMenuAboutAnonymous()V
    .locals 3

    .prologue
    .line 197
    const-string v0, "Menu"

    const-string v1, "menu-about-anonymous"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public trackMenuAboutLegal()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "Menu"

    const-string v1, "menu-about-legal"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public trackMenuBuy()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "Menu"

    const-string v1, "menu-buy"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public trackMenuProfile()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "Menu"

    const-string v1, "menu-profile"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public trackMenuTutorial()V
    .locals 3

    .prologue
    .line 177
    const-string v0, "Menu"

    const-string v1, "menu-tutorial"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public trackMenuUpdate()V
    .locals 3

    .prologue
    .line 185
    const-string v0, "Menu"

    const-string v1, "menu-update"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/google/Analytic;->sendEventToAnalytic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public trackPage(Ljava/lang/String;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/google/Analytic;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

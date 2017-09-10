.class public Lcom/parrot/freeflight/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sMainApplication:Lcom/parrot/freeflight/MainApplication;

.field private static sScreenOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApp()Lcom/parrot/freeflight/MainApplication;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/parrot/freeflight/MainApplication;->sMainApplication:Lcom/parrot/freeflight/MainApplication;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/parrot/freeflight/MainApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/parrot/freeflight/MainApplication;->sScreenOrientation:I

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    const-string v0, "FFMini"

    const-string v1, "Starting application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/parrot/freeflight/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/MainApplication;->sContext:Landroid/content/Context;

    .line 27
    sput-object p0, Lcom/parrot/freeflight/MainApplication;->sMainApplication:Lcom/parrot/freeflight/MainApplication;

    .line 28
    invoke-static {p0}, Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;->getOrientation(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/MainApplication;->sScreenOrientation:I

    .line 29
    invoke-static {p0}, Lcom/parrot/freeflight/core/CoreManager;->create(Landroid/app/Application;)V

    .line 30
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->start()V

    .line 31
    return-void
.end method

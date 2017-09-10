.class public Lcom/parrot/freeflight/util/sync/NetworkChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/parrot/freeflight/util/sync/SyncAdapter;->startSync(Landroid/content/Context;)V

    .line 17
    return-void
.end method

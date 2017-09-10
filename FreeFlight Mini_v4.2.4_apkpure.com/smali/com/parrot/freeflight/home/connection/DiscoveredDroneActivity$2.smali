.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DiscoveredDroneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.location.MODE_CHANGED"

    .line 88
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$100(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    .line 91
    :cond_1
    return-void
.end method

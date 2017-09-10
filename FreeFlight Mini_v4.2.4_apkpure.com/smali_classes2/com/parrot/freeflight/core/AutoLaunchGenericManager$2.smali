.class Lcom/parrot/freeflight/core/AutoLaunchGenericManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoLaunchGenericManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchGenericManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->checkProductsFirmware()V

    .line 58
    return-void
.end method

.class Lcom/parrot/freeflight/core/ScreenConfiguration$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/ScreenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/ScreenConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/ScreenConfiguration;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$1;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$1;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/ScreenConfiguration;->access$002(Lcom/parrot/freeflight/core/ScreenConfiguration;Z)Z

    .line 122
    const-string v1, "FFMini.Screen"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$1;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-static {v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;->access$100(Lcom/parrot/freeflight/core/ScreenConfiguration;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$1;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/ScreenConfiguration;->access$002(Lcom/parrot/freeflight/core/ScreenConfiguration;Z)Z

    .line 126
    const-string v1, "FFMini.Screen"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$1;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-static {v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;->access$100(Lcom/parrot/freeflight/core/ScreenConfiguration;)V

    goto :goto_0
.end method

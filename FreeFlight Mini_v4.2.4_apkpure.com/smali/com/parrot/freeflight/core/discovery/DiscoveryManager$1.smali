.class Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 340
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_ON:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$000(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 341
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_OFF:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    goto :goto_0
.end method

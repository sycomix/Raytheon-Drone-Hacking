.class Lcom/parrot/freeflight/core/DeviceConnector$1;
.super Ljava/lang/Object;
.source "DeviceConnector.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/DeviceConnector;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/UserSettings;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/DeviceConnector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector$1;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$1;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0}, Lcom/parrot/freeflight/core/DeviceConnector;->access$000(Lcom/parrot/freeflight/core/DeviceConnector;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$1;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0}, Lcom/parrot/freeflight/core/DeviceConnector;->access$100(Lcom/parrot/freeflight/core/DeviceConnector;)V

    goto :goto_0
.end method

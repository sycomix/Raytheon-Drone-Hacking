.class Lcom/parrot/freeflight/core/model/ModelStore$1;
.super Ljava/lang/Object;
.source "ModelStore.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/model/ModelStore;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/ModelStore;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore$1;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 69
    const-string v0, "FFMini.Model.Store"

    const-string v1, "No activity in foreground, save model"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore$1;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->access$000(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore$1;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/ModelStore;->access$100(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 74
    :cond_0
    return-void
.end method

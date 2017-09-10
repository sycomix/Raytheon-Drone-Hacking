.class Lcom/parrot/freeflight/core/model/ModelStore$3;
.super Ljava/lang/Object;
.source "ModelStore.java"

# interfaces
.implements Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/model/ModelStore;->start()V
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
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 6

    .prologue
    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/UserRemoteCtrl;

    move-result-object v0

    .line 139
    .local v0, "remoteCtrl":Lcom/parrot/freeflight/UserRemoteCtrl;
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1000(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/UserRemoteCtrl;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 141
    const-string v1, "FFMini.Model.Store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserRemoteCtrl changed: was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1002(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/UserRemoteCtrl;)Lcom/parrot/freeflight/UserRemoteCtrl;

    .line 144
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "FFMini.Model.Store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserRemoteCtrl changed: closing old model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1102(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$100(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 154
    :cond_0
    if-eqz v0, :cond_1

    .line 156
    const-string v1, "FFMini.Model.Store"

    const-string v2, "UserRemoteCtrl changed: creating new model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v2, Lcom/parrot/freeflight/core/model/LocalStorage;

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-virtual {v0}, Lcom/parrot/freeflight/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 159
    invoke-static {v4}, Lcom/parrot/freeflight/core/model/ModelStore;->access$700(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v5}, Lcom/parrot/freeflight/core/model/ModelStore;->access$800(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v5

    .line 158
    invoke-static {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/model/ModelFactory;->create(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1102(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1300(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 165
    :cond_1
    return-void
.end method

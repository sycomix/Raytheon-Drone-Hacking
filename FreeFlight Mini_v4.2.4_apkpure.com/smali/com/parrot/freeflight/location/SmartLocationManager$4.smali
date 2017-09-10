.class Lcom/parrot/freeflight/location/SmartLocationManager$4;
.super Ljava/lang/Object;
.source "SmartLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/location/SmartLocationManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/SmartLocationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$4;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    const-string v0, "FFMini.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected to GooglePlayServices, mWantingGoogleLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager$4;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$100(Lcom/parrot/freeflight/location/SmartLocationManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager$4;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$100(Lcom/parrot/freeflight/location/SmartLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager$4;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$200(Lcom/parrot/freeflight/location/SmartLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager$4;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$300(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager$4;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkGoogleLocationSettings(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 190
    const-string v0, "FFMini.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection to GooglePlayServices suspended:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

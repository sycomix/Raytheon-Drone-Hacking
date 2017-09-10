.class Lcom/parrot/freeflight/location/SmartLocationManager$5;
.super Ljava/lang/Object;
.source "SmartLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/location/SmartLocationManager;->checkGoogleLocationSettings(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    iput-object p2, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 505
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager$5;->onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 5
    .param p1, "locationSettingsResult"    # Lcom/google/android/gms/location/LocationSettingsResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 508
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 510
    .local v0, "status":Lcom/google/android/gms/common/api/Status;
    const-string v1, "FFMini.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGoogleLocationSettings result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWantingGoogleLocation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$100(Lcom/parrot/freeflight/location/SmartLocationManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 515
    :sswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$202(Lcom/parrot/freeflight/location/SmartLocationManager;Z)Z

    .line 516
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$100(Lcom/parrot/freeflight/location/SmartLocationManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$300(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    goto :goto_0

    .line 521
    :sswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v1, v4}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$202(Lcom/parrot/freeflight/location/SmartLocationManager;Z)Z

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->val$activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    goto :goto_0

    .line 532
    :sswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$5;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-static {v1, v4}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$202(Lcom/parrot/freeflight/location/SmartLocationManager;Z)Z

    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x2136 -> :sswitch_2
    .end sparse-switch
.end method

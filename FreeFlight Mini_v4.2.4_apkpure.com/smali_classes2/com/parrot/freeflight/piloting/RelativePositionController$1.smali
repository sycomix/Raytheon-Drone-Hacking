.class Lcom/parrot/freeflight/piloting/RelativePositionController$1;
.super Ljava/lang/Object;
.source "RelativePositionController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/RelativePositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/RelativePositionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/RelativePositionController;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController$1;->this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController$1;->this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateControllerLocation(Landroid/location/Location;)V

    .line 177
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 182
    return-void
.end method

.class Lcom/parrot/freeflight/core/ScreenConfiguration$2;
.super Ljava/lang/Object;
.source "ScreenConfiguration.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 132
    iput-object p1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$2;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 135
    const-string v0, "FFMini.Screen"

    const-string v1, "onDisplayAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration$2;->this$0:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-static {v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;->access$200(Lcom/parrot/freeflight/core/ScreenConfiguration;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 147
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 148
    const-string v1, "Screen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 140
    const-string v0, "FFMini.Screen"

    const-string v1, "onDisplayRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

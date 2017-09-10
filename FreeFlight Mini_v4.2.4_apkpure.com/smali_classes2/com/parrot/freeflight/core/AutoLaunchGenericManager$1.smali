.class Lcom/parrot/freeflight/core/AutoLaunchGenericManager$1;
.super Ljava/lang/Object;
.source "AutoLaunchGenericManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


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
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    iget-object v0, v0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    if-eq v0, p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->onDroneModelChanged(Lcom/parrot/freeflight/core/model/Model;)V

    .line 50
    :cond_0
    return-void
.end method

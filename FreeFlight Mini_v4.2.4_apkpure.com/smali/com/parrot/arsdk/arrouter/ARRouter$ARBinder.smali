.class public Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;
.super Landroid/os/Binder;
.source "ARRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ARBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/parrot/arsdk/arrouter/ARRouter;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    return-object v0
.end method

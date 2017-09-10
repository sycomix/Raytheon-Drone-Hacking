.class abstract Lcom/parrot/arsdk/arrouter/LedsController$Led;
.super Ljava/lang/Object;
.source "LedsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/LedsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Led"
.end annotation


# instance fields
.field private blinkEnabled:Z

.field private blinkState:Z

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/LedsController;


# direct methods
.method private constructor <init>(Lcom/parrot/arsdk/arrouter/LedsController;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arrouter/LedsController;Lcom/parrot/arsdk/arrouter/LedsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;
    .param p2, "x1"    # Lcom/parrot/arsdk/arrouter/LedsController$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$Led;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;)V

    return-void
.end method


# virtual methods
.method public blink()V
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkEnabled:Z

    if-eqz v0, :cond_0

    .line 43
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkState:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkState:Z

    .line 44
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$Led;->processBlink()V

    .line 46
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlinkState()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkState:Z

    return v0
.end method

.method public isBlinkEnabled()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkEnabled:Z

    return v0
.end method

.method protected abstract processBlink()V
.end method

.method public setBlinkEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkEnabled:Z

    if-eq p1, v0, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkState:Z

    .line 25
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$Led;->blinkEnabled:Z

    .line 27
    :cond_0
    return-void
.end method

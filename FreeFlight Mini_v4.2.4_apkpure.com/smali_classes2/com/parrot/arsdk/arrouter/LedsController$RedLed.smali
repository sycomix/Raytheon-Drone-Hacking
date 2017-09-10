.class Lcom/parrot/arsdk/arrouter/LedsController$RedLed;
.super Lcom/parrot/arsdk/arrouter/LedsController$Led;
.source "LedsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/LedsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedLed"
.end annotation


# instance fields
.field private enabled:Z

.field private final led:I

.field private state:Z

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/LedsController;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/LedsController;I)V
    .locals 1
    .param p2, "led"    # I

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/arsdk/arrouter/LedsController$Led;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;Lcom/parrot/arsdk/arrouter/LedsController$1;)V

    .line 64
    iput p2, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->led:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->enabled:Z

    .line 66
    return-void
.end method


# virtual methods
.method public fillList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->enabled:Z

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->led:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method protected processBlink()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->getBlinkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->enabled:Z

    .line 89
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/LedsController;->access$100(Lcom/parrot/arsdk/arrouter/LedsController;)V

    .line 90
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->isBlinkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->state:Z

    if-eq v0, p1, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->setBlinkEnabled(Z)V

    .line 73
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->led:I

    if-lez v0, :cond_2

    .line 75
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->enabled:Z

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/LedsController;->access$100(Lcom/parrot/arsdk/arrouter/LedsController;)V

    .line 82
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->enabled:Z

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->state:Z

    .line 84
    :cond_1
    return-void

    .line 79
    :cond_2
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->enabled:Z

    goto :goto_0
.end method

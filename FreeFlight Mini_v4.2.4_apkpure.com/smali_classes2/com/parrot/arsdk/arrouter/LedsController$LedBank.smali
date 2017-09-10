.class Lcom/parrot/arsdk/arrouter/LedsController$LedBank;
.super Lcom/parrot/arsdk/arrouter/LedsController$Led;
.source "LedsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/LedsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedBank"
.end annotation


# instance fields
.field private blinkMode:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

.field private level:I

.field private final red:I

.field private redEnabled:Z

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/LedsController;

.field private final white0:I

.field private white0Enabled:Z

.field private final white1:I

.field private white1Enabled:Z

.field private final white2:I

.field private white2Enabled:Z

.field private final white3:I

.field private white3Enabled:Z


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/LedsController;IIIII)V
    .locals 2
    .param p2, "red"    # I
    .param p3, "white0"    # I
    .param p4, "white1"    # I
    .param p5, "white2"    # I
    .param p6, "white3"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/arsdk/arrouter/LedsController$Led;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;Lcom/parrot/arsdk/arrouter/LedsController$1;)V

    .line 122
    iput p2, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->red:I

    .line 123
    iput p3, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0:I

    .line 124
    iput p4, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1:I

    .line 125
    iput p5, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2:I

    .line 126
    iput p6, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3:I

    .line 127
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->redEnabled:Z

    .line 128
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0Enabled:Z

    .line 129
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1Enabled:Z

    .line 130
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2Enabled:Z

    .line 131
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3Enabled:Z

    .line 132
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
    .line 178
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->redEnabled:Z

    if-eqz v0, :cond_0

    .line 180
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->red:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0Enabled:Z

    if-eqz v0, :cond_1

    .line 184
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1Enabled:Z

    if-eqz v0, :cond_2

    .line 188
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2Enabled:Z

    if-eqz v0, :cond_3

    .line 192
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3Enabled:Z

    if-eqz v0, :cond_4

    .line 196
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_4
    return-void
.end method

.method protected processBlink()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-object v0, Lcom/parrot/arsdk/arrouter/LedsController$2;->$SwitchMap$com$parrot$arsdk$arrouter$LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM:[I

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->blinkMode:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/LedsController;->access$100(Lcom/parrot/arsdk/arrouter/LedsController;)V

    .line 159
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->getBlinkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->redEnabled:Z

    .line 145
    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0Enabled:Z

    .line 146
    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1Enabled:Z

    .line 147
    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2Enabled:Z

    .line 148
    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3Enabled:Z

    goto :goto_0

    .line 151
    :pswitch_1
    iput-boolean v2, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->redEnabled:Z

    .line 152
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->getBlinkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0Enabled:Z

    .line 153
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->getBlinkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1Enabled:Z

    .line 154
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->getBlinkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2Enabled:Z

    .line 155
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->getBlinkState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3Enabled:Z

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBlinkMode(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V
    .locals 0
    .param p1, "mode"    # Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->blinkMode:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .line 137
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->isBlinkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->level:I

    if-eq v0, p1, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p0, v2}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkEnabled(Z)V

    .line 166
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->red:I

    if-lez v0, :cond_2

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->redEnabled:Z

    .line 167
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0:I

    if-ltz v0, :cond_3

    if-le p1, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white0Enabled:Z

    .line 168
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1:I

    if-ltz v0, :cond_4

    const/4 v0, 0x2

    if-le p1, v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white1Enabled:Z

    .line 169
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2:I

    if-ltz v0, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white2Enabled:Z

    .line 170
    iget v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3:I

    if-ltz v0, :cond_6

    const/4 v0, 0x4

    if-le p1, v0, :cond_6

    :goto_4
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->white3Enabled:Z

    .line 171
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/LedsController;->access$100(Lcom/parrot/arsdk/arrouter/LedsController;)V

    .line 172
    iput p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->level:I

    .line 174
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 166
    goto :goto_0

    :cond_3
    move v0, v2

    .line 167
    goto :goto_1

    :cond_4
    move v0, v2

    .line 168
    goto :goto_2

    :cond_5
    move v0, v2

    .line 169
    goto :goto_3

    :cond_6
    move v1, v2

    .line 170
    goto :goto_4
.end method

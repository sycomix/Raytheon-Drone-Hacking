.class Lcom/parrot/freeflight/piloting/widget/Joystick$1;
.super Ljava/lang/Object;
.source "Joystick.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/widget/Joystick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removeListener()V
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 320
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 321
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$402(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)Z

    .line 326
    return-void

    .line 323
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$000(Lcom/parrot/freeflight/piloting/widget/Joystick;)I

    move-result v3

    and-int/lit8 v3, v3, 0x11

    const/16 v4, 0x11

    if-eq v3, v4, :cond_a

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "retry":Z
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$000(Lcom/parrot/freeflight/piloting/widget/Joystick;)I

    move-result v3

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_5

    .line 289
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$200(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 290
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_4

    move v0, v1

    .line 296
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$000(Lcom/parrot/freeflight/piloting/widget/Joystick;)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 297
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$200(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 298
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_7

    move v0, v1

    .line 304
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 305
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->removeListener()V

    .line 306
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_3

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 308
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v1, v2, v2, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->updateThumb(IIZ)V

    .line 316
    .end local v0    # "retry":Z
    :cond_3
    :goto_2
    return-void

    .restart local v0    # "retry":Z
    :cond_4
    move v0, v2

    .line 290
    goto :goto_0

    .line 291
    :cond_5
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$000(Lcom/parrot/freeflight/piloting/widget/Joystick;)I

    move-result v3

    and-int/lit8 v3, v3, 0x50

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    .line 292
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$200(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 293
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-gtz v3, :cond_6

    move v0, v1

    :goto_3
    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    .line 298
    goto :goto_1

    .line 299
    :cond_8
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$000(Lcom/parrot/freeflight/piloting/widget/Joystick;)I

    move-result v3

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 300
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$200(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 301
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->this$0:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-gtz v3, :cond_9

    move v0, v1

    :goto_4
    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_4

    .line 314
    .end local v0    # "retry":Z
    :cond_a
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick$1;->removeListener()V

    goto :goto_2
.end method

.class Lcom/parrot/freeflight/core/academy/AcademyManager$1;
.super Landroid/os/Handler;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 197
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 213
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .line 214
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v3, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iget-object v4, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    .line 235
    :goto_0
    iget v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 236
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$500(Lcom/parrot/freeflight/core/academy/AcademyManager;)Ljava/util/List;

    move-result-object v2

    iget v3, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    .end local v1    # "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    :cond_0
    :goto_1
    return-void

    .line 199
    :pswitch_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-static {v3, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 201
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v0, v2, v5

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .line 202
    .local v0, "handlerHolder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    if-eqz v0, :cond_1

    .line 203
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$000(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    .line 210
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    goto :goto_1

    .line 206
    :cond_2
    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iget-object v4, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    goto :goto_2

    .line 218
    .end local v0    # "handlerHolder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    .restart local v1    # "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1

    .line 228
    :pswitch_1
    iget-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v3, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2, v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$200(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)V

    .line 221
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$300(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    invoke-static {v3, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$402(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 225
    iget-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v3, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

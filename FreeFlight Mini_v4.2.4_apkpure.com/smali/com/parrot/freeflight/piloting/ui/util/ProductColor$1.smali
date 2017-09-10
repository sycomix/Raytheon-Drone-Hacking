.class Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;
.super Ljava/lang/Object;
.source "ProductColor.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$000(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$000(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$000(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$100(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$002(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/DelosModel;

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$000(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$100(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 111
    :cond_1
    return-void
.end method

.class Lcom/parrot/freeflight/piloting/ui/util/ProductColor$2;
.super Ljava/lang/Object;
.source "ProductColor.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


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
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$2;->this$0:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->access$200(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Z

    .line 118
    return-void
.end method

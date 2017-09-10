.class abstract Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;
.super Ljava/lang/Object;
.source "DelosOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ValueRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mType:I

.field protected final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;, "Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;->mType:I

    .line 57
    iput-object p2, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;->mValue:Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

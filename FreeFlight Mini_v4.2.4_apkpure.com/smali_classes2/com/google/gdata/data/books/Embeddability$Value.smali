.class public final Lcom/google/gdata/data/books/Embeddability$Value;
.super Ljava/lang/Object;
.source "Embeddability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/books/Embeddability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# static fields
.field public static final EMBEDDABLE:Ljava/lang/String; = "http://schemas.google.com/books/2008#embeddable"

.field public static final NOT_EMBEDDABLE:Ljava/lang/String; = "http://schemas.google.com/books/2008#not_embeddable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

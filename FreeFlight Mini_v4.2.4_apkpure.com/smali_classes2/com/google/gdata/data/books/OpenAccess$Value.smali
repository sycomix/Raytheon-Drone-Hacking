.class public final Lcom/google/gdata/data/books/OpenAccess$Value;
.super Ljava/lang/Object;
.source "OpenAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/books/OpenAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# static fields
.field public static final DISABLED:Ljava/lang/String; = "http://schemas.google.com/books/2008#disabled"

.field public static final ENABLED:Ljava/lang/String; = "http://schemas.google.com/books/2008#enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

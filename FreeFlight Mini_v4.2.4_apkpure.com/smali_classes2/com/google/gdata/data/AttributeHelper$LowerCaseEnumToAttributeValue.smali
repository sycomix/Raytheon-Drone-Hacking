.class public Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;
.super Ljava/lang/Object;
.source "AttributeHelper.java"

# interfaces
.implements Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/AttributeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowerCaseEnumToAttributeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 556
    .local p0, "this":Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;, "Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;, "Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue<TT;>;"
    .local p1, "enumValue":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

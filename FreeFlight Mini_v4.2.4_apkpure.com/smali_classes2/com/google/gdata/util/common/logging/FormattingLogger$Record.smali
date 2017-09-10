.class public Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
.super Ljava/util/logging/LogRecord;
.source "FormattingLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/logging/FormattingLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final formatterArgs:[Ljava/lang/Object;

.field private final formatterFormat:Ljava/lang/String;

.field private needToInferCaller:Z

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    .line 131
    iput-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "sourceClassName"    # Ljava/lang/String;
    .param p4, "sourceMethodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceClassName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceMethodName(Ljava/lang/String;)V

    .line 159
    iput-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 141
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    .line 143
    iput-object p2, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 145
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "sourceClassName"    # Ljava/lang/String;
    .param p5, "sourceMethodName"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceClassName(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceMethodName(Ljava/lang/String;)V

    .line 172
    iput-object p2, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 174
    return-void
.end method


# virtual methods
.method public getFormatterArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatterFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/google/gdata/util/common/logging/FormattingLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->inferCaller(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/google/gdata/util/common/logging/FormattingLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->inferCaller(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method protected inferCaller(Ljava/lang/String;)V
    .locals 8
    .param p1, "loggerClassName"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    .line 183
    const/4 v4, 0x1

    .line 184
    .local v4, "isSearchingForLogger":Z
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    .line 185
    .local v2, "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 188
    .local v6, "matches":Z
    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 189
    const/4 v4, 0x0

    .line 184
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_1
    if-nez v6, :cond_0

    if-nez v4, :cond_0

    .line 194
    invoke-virtual {p0, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceClassName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceMethodName(Ljava/lang/String;)V

    .line 199
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    .end local v6    # "matches":Z
    :cond_2
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceClassName"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceClassName:Ljava/lang/String;

    .line 115
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceMethodName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceMethodName:Ljava/lang/String;

    .line 121
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

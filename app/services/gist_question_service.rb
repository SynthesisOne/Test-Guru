class GistQuestionService
  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || GitHubClient.new
  end

  def call
    @client.create_gist(gist_params)

  end
  private
  def gist_params
    {
      "description": "Вопрос #{@test.title} from Test-Guru",
      "public": true,
      "files": {
        "hello_world.txt": {
          "content": gist_content
        }

      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end
end